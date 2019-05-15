function estimate = leastSquares(x1,y1,z1,d1,x2,y2,z2,d2,x3,y3,z3,d3,x4,y4,z4,d4)

%Coordinate estimation function for  target node in 3D space with 4 referencee nodes

% Elements of A matrix
A11 = 2*(x4-x1); A12 = 2*(y4-y1); A13 = 2*(z4-z1);
A21 = 2*(x4-x2); A22 = 2*(y4-y2); A32 = 2*(z4-z2);
A31 = 2*(x4-x3); A23 = 2*(y4-y3); A33 = 2*(z4-z3);

A = [ A11, A12, A13; 
      A21, A22, A23; 
      A31, A32, A33;];

%Elements of b matrix
b11 = (d1^2-d4^2)-(x1^2-x4^2)-(y1^2-y4^2)-(z1^2-z4^2); 
b21 = (d2^2-d4^2)-(x2^2-x4^2)-(y2^2-y4^2)-(z2^2-z4^2);
b31 = (d3^2-d4^2)-(x3^2-x4^2)-(y3^2-y4^2)-(z3^2-z4^2); 

%Weight Matrix
W = [1/(d1^2)      0        0 ;
       0       1/(d2^2)     0 ;
       0           0      1/d4^2;]

b = [ b11;
      b21;
      b31; ];

%Least Squares Solution to system of equations Ax = b i.e x = (A'A)^-1 * Ab  
estimate = inv(A'*inv(W)*A)*A'*inv(W)*b;
estimate = estimate';


end