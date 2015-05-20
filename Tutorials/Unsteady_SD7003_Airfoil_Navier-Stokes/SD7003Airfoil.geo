
fflc = 5.0;
surf_len = 0.02;
lete_factor = 0.25;

Mesh.CharacteristicLengthMax = fflc;
Mesh.CharacteristicLengthExtendFromBoundary = 0;
Mesh.SaveParametric = 1;

Merge "SD7003_2D_FF50C.stp";


Mesh.Algorithm=8;
Mesh.RecombineAll=1;

Physical Line(6) = {1:4};
Physical Line(7) = {5:6};
Physical Surface(0) = {1};

Field[1] = Attractor;
Field[1].NodesList = {5,6};
Field[1].NNodesByEdge = 200;

Field[2] = Threshold;
Field[2].IField = 1;
Field[2].LcMin = 0.002;
Field[2].LcMax = 0.1;
Field[2].DistMin = 0.0;
Field[2].DistMax = 0.2;
Field[2].StopAtDistMax = 1;


Field[3] = Box;
Field[3].VOut = fflc;
Field[3].VIn = 0.5*surf_len;
Field[3].XMax = 1.5;
Field[3].XMin = 0.97;
Field[3].YMax = 0.05;
Field[3].YMin = -0.04;
Field[3].ZMax = 1;
Field[3].ZMin = -1;

Field[5] = Box;
Field[5].VOut = fflc;
Field[5].VIn = surf_len;
Field[5].XMax = 3;
Field[5].XMin = -0.15;
Field[5].YMax = 0.2;
Field[5].YMin = -0.1;
Field[5].ZMax = 1;
Field[5].ZMin = -1;

Field[6] = Box;
Field[6].VOut = fflc;
Field[6].VIn = 2*surf_len;
Field[6].XMax = 5;
Field[6].XMin = -0.25;
Field[6].YMax = 0.75;
Field[6].YMin = -0.2;
Field[6].ZMax = 1;
Field[6].ZMin = -1;

Field[7] = Box;
Field[7].VOut = fflc;
Field[7].VIn = 4*surf_len;
Field[7].XMax = 10;
Field[7].XMin = -1;
Field[7].YMax = 1.5;
Field[7].YMin = -0.5;
Field[7].ZMax = 1;
Field[7].ZMin = -1;


Field[8] = Box;
Field[8].VOut = fflc;
Field[8].VIn = 0.25;
Field[8].XMax = 25;
Field[8].XMin = -3;
Field[8].YMax = 3;
Field[8].YMin = -3;
Field[8].ZMax = 1;
Field[8].ZMin = -1;

Field[9] = Box;
Field[9].VOut = fflc;
Field[9].VIn = 1;
Field[9].XMax = 100;
Field[9].XMin = -10;
Field[9].YMax = 10;
Field[9].YMin = -10;
Field[9].ZMax = 1;
Field[9].ZMin = -1;


Field[10] = Min;
Field[10].FieldsList = {2,3,5,6,7,8,9};

Background Field = 10;

