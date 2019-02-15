#include <main.h>

const int maxPoles = 21;

const int calibPower = sin_range/2;
const int quadrantDivExternal = SENSOR_MAX / numExternalQuadrants;
const int quadrantDivInternal = SENSOR_MAX / numInternalQuadrants;
	
ConfigData* config = (ConfigData*)flashPageAddress;

int currentPole = 0;

int getElectricDegrees() {
	//int angle = spiCurrentAngleExternal % SENSOR_MAX;
	//if (angle < 0) angle += SENSOR_MAX;
	
	int angle = spiCurrentAngleExternal;
	
	int a;
	int q = angle / quadrantDivExternal;
	int range = config->externalQuadrants[q].range;
	int qstart;
	
	if (config->up)
	{
		int min = config->externalQuadrants[q].minAngle;
		qstart = q * quadrantDivExternal;
		a = min + (angle - qstart) * range / quadrantDivExternal;
	}
	else
	{
		int max = config->externalQuadrants[q].maxAngle;
		qstart = q * quadrantDivExternal;
		a = max - (angle - qstart) * range / quadrantDivExternal;
	}
	
	return a;
}

void calibrateExternal() {
	const int step = 5;
	int a = 0;
	int i = 0;
	int external = spiReadAngleExternal();
	
	bool up;
	int q = 0;
	int poles;
	int q1;
	int p = 0;
	int prevQ = -1;
	int firstQ = -1;
	int targetA;
	
	int qExt[numExternalQuadrants][maxPoles * 2] = { 0 };

	// gently set 0 angle
	
	for (int p = 0; p < calibPower / 10; p++)
	{
		delay(1);
		setPwm(0, p * 10);
	}
	
	delay(500);
	
	// find the edge of the pole
	
	while (a < sin_period)
	{		
		a += step;
		delay(1);
		setPwm(a, calibPower);				
	}
	a = 0;
	
	// full turn up
	
	for (p = 0; p < maxPoles; p++)
	{
		for (q = 0; q < numExternalQuadrants; q++)
		{
			targetA = a + externalQuadrantSize;
			
			while (a < targetA)
			{
				a += step;
				delay(1);
				setPwm(a, calibPower);				
			}
			
			external = spiReadAngleExternal();
			qExt[q][p] = external;
		}
		
		a = p * sin_period;
	}
	
	poles = p;
	
	// slightly up and down
	
	targetA = a + sin_period;
	while (a < targetA)
	{		
		a += step;
		delay(1);
		setPwm(a, calibPower);				
	}
	targetA = a - sin_period;
	while (a > targetA)
	{		
		a -= step;
		delay(1);
		setPwm(a, calibPower);				
	}
	
	// full turn down
	
	for (; p < maxPoles * 2; p++)
	{
		for (q = numExternalQuadrants - 1; q >= 0; q--)
		{
			external = spiReadAngleExternal();
			qExt[q][p] = external;
			
			targetA = a - externalQuadrantSize;
			
			while (a > targetA)
			{
				a -= step;
				delay(1);
				setPwm(a, calibPower);				
			}
		}
		
		a = ((poles - 1) * 2 - p) * sin_period;
	}	
	
	// gently release
	
	for (int p = calibPower / 10; p > 0; p--)
	{
		delay(1);
		setPwm(a, p * 10);
	}

	setPwm(0, 0);
	
	ConfigData lc;
	lc.controllerId = config->controllerId;	
		
	// prepare external data
	
	for (q = 0; q < numExternalQuadrants; q++)
	{
		// see if this quadrant is split
		
		for (int p = 1; p < poles; p++)
		{
			int interPoleDiff = qExt[q][0] - qExt[q][p];
			if (interPoleDiff > SENSOR_MAX / 2)
			{
				qExt[q][p] += SENSOR_MAX;
			}
			if (interPoleDiff < - SENSOR_MAX / 2)
			{
				qExt[q][p] -= SENSOR_MAX;
			}
		}
	}
	
	// average over all poles
	
	for (q = 0; q < numExternalQuadrants; q++)
	{
		for (int p = 1; p < poles; p++)
			qExt[q][0] += qExt[q][p];

		qExt[q][0] /= poles;
	}
	
	// up or down?
	int nUp = 0;
	int nDn = 0;
	
	for (q = 0; q < numExternalQuadrants - 1; q++)
	{
		int d = qExt[q + 1][0] - qExt[q][0];
		if (d > 0 && d < SENSOR_MAX / 2) nUp++;
		else nDn++;
	}
	
	up = nUp > nDn;
	
	for (q = 0; q < numExternalQuadrants; q++)
	{
		int qThis = qExt[q][0];
		int qNext = qExt[(q + 1) % numExternalQuadrants][0];
		
		if (!up)
		{
			int tmp = qThis;
			qThis = qNext;
			qNext = tmp;
		}
		
		lc.externalQuadrants[q].minAngle = qThis;
		
		if (qNext < qThis)
			lc.externalQuadrants[q].maxAngle = qNext + SENSOR_MAX;
		else
			lc.externalQuadrants[q].maxAngle = qNext;
		
		lc.externalQuadrants[q].range = lc.externalQuadrants[q].maxAngle - lc.externalQuadrants[q].minAngle;
	}
	
	// store in flash
	lc.calibrated = 1;
	lc.up = up;
	writeFlash((uint16_t*)&lc, sizeof(ConfigData) / sizeof(uint16_t));
}

void calibrateInternal() {
	const int step = 20;
	int a = 0;
	int i = 0;
	int sensor;
	int prevSensor;
	
	bool up;
	int q = 0;
	int prevQ = -1;
	int firstQ = -1;
	int quadrantsLeft = numInternalQuadrants;
	
	QuadrantData qUp[numInternalQuadrants] = { 0 };
	QuadrantData qDn[numInternalQuadrants] = { 0 };
	
	for (i = 0; i < numInternalQuadrants; i++)
	{
		qUp[i].minAngle = 0xFFFFFF;
		qDn[i].minAngle = 0xFFFFFF;
	}

	// gently set 0 angle
	
	for (int p = 0; p < calibPower / 10; p++)
	{
		delay(1);
		setPwm(0, p * 10);
	}
	
	// find the edge of the quadrant, detect direction
	
	int sensorFirst = spiReadAngleInternal();
	int q1 = -1;
	int q2 = -1;
	int q3 = -1;
	while (true)
	{
		sensor = spiReadAngleInternal();
		prevSensor = sensor;
		q = sensor / quadrantDivInternal;
			
		if (q1 == -1) q1 = q;
		else if (q2 == -1 && q1 != q) q2 = q;
		else if (q3 == -1 && q1 != q && q2 != q) q3 = q;
		else if (q1 != q && q2 != q && q3 != q) break;
		
		a += step;
		delay(1);
		setPwm(a, calibPower);		
	}
	
	if (sensor > sensorFirst)
	{
		if (sensor - sensorFirst < sensorFirst + (SENSOR_MAX - sensor))
			up = true;
		else
			up = false;
	}
	else
	{
		if (sensorFirst - sensor < sensor + (SENSOR_MAX - sensorFirst))
			up = false;
		else
			up = true;
	}

	// full turn forward

	bool awayFromFirst = false;
	bool backToFirst = false;
	prevQ = q;
	while (true)
	{
		sensor = spiReadAngleInternal();
		q = sensor / quadrantDivInternal;
		if (q != prevQ)
		{
			q1 = q;
		}

		// noice on the quadrant edges
		if (up)
		{
			if ((q != 0 || prevQ != numInternalQuadrants - 1) && q < prevQ) q = prevQ;
			else if (q == numInternalQuadrants - 1 && prevQ == 0) q = prevQ;
		}
		else
		{
			if ((q != numInternalQuadrants - 1 || prevQ != 0) && q > prevQ) q = prevQ;
			else if (q == 0 && prevQ == numInternalQuadrants - 1) q = prevQ;
		}

		if (q != prevQ)
		{
			prevQ = q;			
		}
		if (firstQ == -1) firstQ = q;
		prevQ = q;		
		
		awayFromFirst |= (q - firstQ  == numInternalQuadrants / 2) || (firstQ - q == numInternalQuadrants / 2);
		backToFirst |= awayFromFirst && (q == firstQ);
		if (backToFirst) break;
		
		if (qUp[q].minAngle > a) qUp[q].minAngle = a;
		if (qUp[q].maxAngle < a) qUp[q].maxAngle = a;
		
		a += step * 2;
		delay(1);
		setPwm(a, calibPower);
	}
		
	for (int i = 0; i < numInternalQuadrants; i++)
	{
		qUp[i].range = qUp[i].maxAngle - qUp[i].minAngle;
	}
	
	//  up and down
	
	int qForth, qBack;
	if (up)
	{
		qForth = q + 1;
		if (qForth == numInternalQuadrants) qForth = 0;
		
		qBack = q - 1;
		if (qBack == -1) qBack = numInternalQuadrants - 1;
	}
	else
	{
		qForth = q - 1;
		if (qForth == -1) qForth = numInternalQuadrants - 1;
		
		qBack = q + 1;
		if (qBack == numInternalQuadrants) qBack = 0;
	}
	
	while (true)
	{
		sensor = spiReadAngleInternal();
		q = sensor / quadrantDivInternal;
		
		if (q == qForth) break;
		
		a += step * 2;
		delay(1);
		setPwm(a, calibPower);
	}
	
	while (true)
	{
		sensor = spiReadAngleInternal();
		q = sensor / quadrantDivInternal;
		
		if (q == qBack) break;
		
		a -= step * 2;
		delay(1);
		setPwm(a, calibPower);
	}
	
	// full turn back
	
	awayFromFirst = false;
	backToFirst = false;
	firstQ = -1;
	prevQ = q;
	while (true)
	{
		sensor = spiReadAngleInternal();
		q = sensor / quadrantDivInternal;
		if (q != prevQ)
		{
			q1 = q;
		}

		// noice on the quadrant edges
		if (up)
		{
			if ((q != numInternalQuadrants - 1 || prevQ != 0) && q > prevQ) q = prevQ;
			else if (q == 0 && prevQ == numInternalQuadrants - 1) q = prevQ;
		}
		else
		{
			if ((q != 0 || prevQ != numInternalQuadrants - 1) && q < prevQ) q = prevQ;
			else if (q == numInternalQuadrants - 1 && prevQ == 0) q = prevQ;
		}

		if (q != prevQ)
		{
			prevQ = q;
		}
		if (firstQ == -1) firstQ = q;
		prevQ = q;
		
		awayFromFirst |= (q - firstQ  == numInternalQuadrants / 2) || (firstQ - q == numInternalQuadrants / 2);
		backToFirst |= awayFromFirst && (q == firstQ);
		if (backToFirst) break;
		
		if (qDn[q].minAngle > a) qDn[q].minAngle = a;
		if (qDn[q].maxAngle < a) qDn[q].maxAngle = a;
		
		a -= step * 2;
		delay(1);
		setPwm(a, calibPower);
	}
	
	// gently release
	
	for (int p = calibPower / 10; p > 0; p--)
	{
		delay(1);
		setPwm(a, p * 10);
	}

	setPwm(0, 0);
	
	for (int i = 0; i < numInternalQuadrants; i++)
	{
		qDn[i].range = qDn[i].maxAngle - qDn[i].minAngle;
	}	
	
	ConfigData lc;
	memcpy(&lc, config, sizeof(ConfigData));
	
	// calc average quadrants
	
	int minRange;
	int maxRange;
	for (int i = 0; i < numInternalQuadrants; i++)
	{
		lc.internalQuadrants[i].minAngle = (qUp[i].minAngle + qDn[i].minAngle) / 2;
		lc.internalQuadrants[i].maxAngle = (qUp[i].maxAngle + qDn[i].maxAngle) / 2;
		int range = lc.internalQuadrants[i].maxAngle - lc.internalQuadrants[i].minAngle;
		lc.internalQuadrants[i].range = range;
		
		if (i == 0 || minRange > range) minRange = range;
		if (i == 0 || maxRange < range) maxRange = range;
	}
	
	// store in flash
	lc.calibrated = 1;
	//lc.up = up;
	writeFlash((uint16_t*)&lc, sizeof(ConfigData) / sizeof(uint16_t));
}

void calibrate() {
	calibrateExternal();
	calibrateInternal();
}
