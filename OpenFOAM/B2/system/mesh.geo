//+
Point(1) = {0, 0, -0.5, 1.0};
//+
Point(2) = {7.5, 0, -0.5, 1.0};
//+
Point(3) = {22.65, 0, 1.01, 1.0};
//+
Point(4) = {22.65, 0, 1.1, 1.0};
//+
Point(5) = {7.5, 0, 1.1, 1.0};
//+
Point(6) = {0, 0, 1.1, 1.0};
//+
Line(1) = {3, 5};
//+
Line(2) = {5, 6};
//+
Line(3) = {6, 1};
//+
Line(4) = {1, 2};
//+
Point(7) = {22.65, 0, 1.01, 1.0};
//+
Recursive Delete {
  Curve{1}; 
}
//+
Line(5) = {5, 4};
//+
Line(6) = {4, 7};
//+
Line(7) = {2, 7};
//+
Line(8) = {5, 2};
//+
Curve Loop(1) = {2, 3, 4, -8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, -7, -8};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {2, 4} = 10 Using Progression 1;
//+
Transfinite Curve {3, 8, 6} = 10 Using Progression 1;
//+
Transfinite Curve {5, 7, 5} = 20 Using Progression 1;
//+
Transfinite Curve {2, 8, 4, 3} = 20 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8} = 20 Using Progression 1;
//+
Extrude {0, 0.6, 0} {
  Surface{1}; Surface{2}; Layers{1}; Recombine;
}
//+
Surface Loop(1) = {17, 1, 21, 25, 30, 29};
//+
Volume(3) = {1};
//+
Surface Loop(2) = {39, 2, 43, 47, 52, 29};
//+
Volume(4) = {2};
//+
Transfinite Volume{1} = {6, 9, 13, 1, 5, 8, 17, 2};
//+
Transfinite Volume{2} = {5, 8, 17, 2, 4, 19, 23, 7};
//+
Physical Surface("inlet") = {21};
//+
Physical Surface("outlet") = {43};
//+
Physical Surface("front") = {1, 2};
//+
Physical Surface("back") = {52, 30};
//+
Physical Surface("atmosphere") = {17, 39};
//+
Physical Surface("bed") = {25};
//+
Physical Surface("slope") = {47};
//+
Physical Volume("internal") = {1, 2};
//+
Recombine Surface {1, 17, 30, 25, 39, 47, 2, 52, 29, 21, 43};
