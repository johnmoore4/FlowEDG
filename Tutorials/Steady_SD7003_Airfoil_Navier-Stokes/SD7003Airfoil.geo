
fflc = 10.0;
surf_len = 0.05;
lete_factor = 0.25;

Mesh.CharacteristicLengthMax = fflc;
Mesh.SaveParametric = 1;
Merge "SD7003TE.stp";


Mesh.Algorithm=8;
Mesh.RecombineAll=1;


Physical Line(6) = {1:4};
Physical Line(7) = {5:7};
Physical Surface(0) = {1};

Field[1] = Attractor;
Field[1].NodesList = {5:7};

Field[2] = Threshold;
Field[2].IField = 1;
Field[2].LcMin = 0.002;
Field[2].LcMax = surf_len;
Field[2].DistMin = 0.0;
Field[2].DistMax = 0.15;
Field[2].StopAtDistMax = 1;


Field[5] = Box;
Field[5].VOut = fflc;
Field[5].VIn = surf_len;
Field[5].XMax = 4;
Field[5].XMin = -0.25;
Field[5].YMax = 0.2;
Field[5].YMin = -0.1;
Field[5].ZMax = 1;
Field[5].ZMin = -1;

Field[6] = Box;
Field[6].VOut = fflc;
Field[6].VIn = 0.1;
Field[6].XMax = 12;
Field[6].XMin = -0.5;
Field[6].YMax = 0.75;
Field[6].YMin = -0.25;
Field[6].ZMax = 1;
Field[6].ZMin = -1;

Field[7] = Box;
Field[7].VOut = fflc;
Field[7].VIn = 0.25;
Field[7].XMax = 30;
Field[7].XMin = -1;
Field[7].YMax = 2;
Field[7].YMin = -0.5;
Field[7].ZMax = 1;
Field[7].ZMin = -1;


Field[8] = Box;
Field[8].VOut = fflc;
Field[8].VIn = 0.5;
Field[8].XMax = 50;
Field[8].XMin = -3;
Field[8].YMax = 3;
Field[8].YMin = -1;
Field[8].ZMax = 1;
Field[8].ZMin = -1;

Field[9] = Box;
Field[9].VOut = fflc;
Field[9].VIn = 1.5;
Field[9].XMax = 100;
Field[9].XMin = -10;
Field[9].YMax = 10;
Field[9].YMin = -5;
Field[9].ZMax = 1;
Field[9].ZMin = -1;

Field[11] = MathEval;
Field[11].F = "0.04 + 0.03*((x-0.5)*(x-0.5) + y*y)";

Field[10] = Min;
Field[10].FieldsList = {2,5,6,7,8,9,11};

Background Field = 10;

