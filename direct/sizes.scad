gap = 3; // distance between moving parts that should not touch
th = 2.5;

// rods -----------------------------------------------------------------------

rod25o = 25 + 0.0;
rod25i = rod25o - 1 * 2;

rod10o = 10 + 0.2;

// motors ---------------------------------------------------------------------

// 80XX

motor8D = 88.65 + 1.0;
motor8H = 21.5;
motor8Cut = 5;

// 60XX

motor6D = 68;
motor6H = 23;
motor6Cut = 4;

// body -----------------------------------------------------------------------

bodyMotorOffsetX = motor6D/2 + gap * 2;
bodyMotorOffsetZ = -motor6D/2;
bodyMotorOffsetY = -30;
bodyMotorOffset = [bodyMotorOffsetX, bodyMotorOffsetY, bodyMotorOffsetZ];

// heap -----------------------------------------------------------------------

heapMotorOffsetX = 30;
heapMotorOffsetZ = -10;
heapMotorOffsetY = motor6H + motor8D/2 + 10;
heapMotorOffset = [heapMotorOffsetX, heapMotorOffsetY, heapMotorOffsetZ];

// thigh ----------------------------------------------------------------------

thighMotorOffsetX = 0;
thighMotorOffsetY = 0;
thighLength = 200;
thighMotorOffset = [thighMotorOffsetX, thighMotorOffsetY, -thighLength];

// shin -----------------------------------------------------------------------

shinMotorOffsetX = -15;
shinMotorOffsetY = 0;
shinLength = 200;
shinMotorOffset = [shinMotorOffsetX, shinMotorOffsetY, -shinLength];

// foot -----------------------------------------------------------------------
