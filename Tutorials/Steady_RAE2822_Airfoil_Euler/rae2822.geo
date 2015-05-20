
fflc = 5.0;
surf_len = 0.04;
lete_factor = 0.25;

Geometry.Tolerance = 1.0e-12;
Mesh.CharacteristicLengthMax = fflc;
Mesh.CharacteristicLengthExtendFromBoundary = 1;
Mesh.SaveParametric = 1;
Merge "rae2822Square.stp";

Mesh.Algorithm = 8;
Mesh.RecombineAll = 1;

Physical Line(6) = {1:4};
Physical Line(5) = {5,6};
Physical Surface(0) = {1};


Field[1] = Attractor;
Field[1].NodesList = {5,6};


Field[2] = Threshold;
Field[2].IField = 1;
Field[2].LcMin = 0.002;
Field[2].LcMax = surf_len;
Field[2].DistMin = 0.0;
Field[2].DistMax = 0.1;
Field[2].StopAtDistMax = 1;


Field[5] = Box;
Field[5].VOut = fflc;
Field[5].VIn = surf_len;
Field[5].XMax = 1.5;
Field[5].XMin = -0.5;
Field[5].YMax = 0.4;
Field[5].YMin = -0.2;
Field[5].ZMax = 1;
Field[5].ZMin = -1;

Field[6] = Box;
Field[6].VOut = fflc;
Field[6].VIn = 0.15;
Field[6].XMax = 30.0;
Field[6].XMin = -1.5;
Field[6].YMax = 2.5;
Field[6].YMin = -0.25;
Field[6].ZMax = 1;
Field[6].ZMin = -1;

Field[7] = Box;
Field[7].VOut = fflc;
Field[7].VIn = 0.4;
Field[7].XMax = 30.0;
Field[7].XMin = -1.5;
Field[7].YMax = 4;
Field[7].YMin = -2;
Field[7].ZMax = 1;
Field[7].ZMin = -1;



Field[11] = MathEval;
Field[11].F = "0.05 + 0.03*((x-0.5)*(x-0.5) + y*y)";


Field[10] = Min;
Field[10].FieldsList = {2,11};

Background Field = 10;


