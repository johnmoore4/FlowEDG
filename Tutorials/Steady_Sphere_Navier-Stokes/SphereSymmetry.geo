ff_len = 5;
max_lan = ff_len;
surf_len = 0.2;
dist = 10.0;
cuttof_dist = 1;


Mesh.CharacteristicLengthMax = ff_len;
Mesh.SaveParametric = 1;
Merge "Sphere25CSymmetry.stp";


Physical Surface(20) = {10};
Physical Surface(6) = {5:9};
Physical Surface(7) = {1:4};

Physical Volume(0) = {1};

Field[1] = Box;
Field[1].VOut = ff_len;
Field[1].VIn = surf_len;
Field[1].XMax = 1.0;
Field[1].XMin = -0.75;
Field[1].YMax = 0.75;
Field[1].YMin = -0.75;
Field[1].ZMax = 0.75;
Field[1].ZMin = -0.75;

Field[2] = Box;
Field[2].VOut = ff_len;
Field[2].VIn = 2*surf_len;
Field[2].XMax = 10;
Field[2].XMin = -1;
Field[2].YMax = 1;
Field[2].YMin = -1;
Field[2].ZMax = 1;
Field[2].ZMin = -1;

Field[3] = Box;
Field[3].VOut = ff_len;
Field[3].VIn = 4*surf_len;
Field[3].XMax = 30;
Field[3].XMin = -2;
Field[3].YMax = 2;
Field[3].YMin = -2;
Field[3].ZMax = 2;
Field[3].ZMin = -2;


Field[10] = Min;
Field[10].FieldsList = {1,2,3};

Background Field = 10;

