function estimate = mmse(x1,y1,z1,d1,x2,y2,z2,d2,x3,y3,z3,d3,x4,y4,z4,d4)

%Coordinate estimation function for  target node in 3D space with 4 referencee nodes


 syms x y z
 
% Take mean square of difference functions
d_f1 = (d1 - (x - x1)^2 + (y - y1)^2 + (z - z1)^2)^(1/2);
d_f2 = (d2 -(x - x2)^2 + (y - y2)^2 + (z - z2)^2)^(1/2);
d_f3 = (d3 -(x - x3)^2 + (y - y3)^2 + (z - z3)^2)^(1/2);
d_f4 = (d4 -(x - x4)^2 + (y - y4)^2 + (z - z4)^2)^(1/2);

% Form Minimum Mean Square Equations
eqn1 = (1/4)*diff((d_f1+d_f2+d_f3+d_f4), x);
eqn2 = (1/4)*diff((d_f1+d_f2+d_f3+d_f4), y);
eqn3 = (1/4)*diff((d_f1+d_f2+d_f3+d_f4), z);

eqn = [eqn1 eqn2 eqn3];

% Obtain numerical solution to system of equations
[sol1,sol2,sol3] = vpasolve(eqn,  [x y z]);
estimate = [double(sol1), double(sol2), double(sol3)];

end