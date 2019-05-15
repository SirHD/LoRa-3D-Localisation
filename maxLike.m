function estimate = maxLike(x1,y1,z1,d1,x2,y2,z2,d2,x3,y3,z3,d3,x4,y4,z4,d4)

%Coordinate estimation function for  target node in 3D space with 4 referencee nodes
syms x y z 

xm = [x1;x2;x3;x4];
ym = [y1;y2;y3;y4];
zm = [z1;z2;z3;z4];
dm = [d1;d2;d3;d4];

% Build elements of maximum likelihood function for all coordinates
for i=1:4 
   um(i) = sqrt((x-xm(i))^2+(y-ym(i))^2 +(z-zm(i))^2);
   a(i) = ((x-xm(i))*(dm(i)-um(i)))/um(i);
   b(i) = ((y-ym(i))*(dm(i)-um(i)))/um(i); 
   c(i) = ((z-zm(i))*(dm(i)-um(i)))/um(i); 
end

% Make system of maximum likelihood functions with different variances for each node
eqn1 = ((-1/(113.62))*a(1) +  (-1/(20.45))*a(2) + (-1/(11.78))*a(3) + (-1/(1.69))*a(4)) == 0;
eqn2 = ((-1/(113.62))*b(1) +  (-1/(20.45))*b(2) + (-1/(11.78))*b(3) + (-1/(1.69))*b(4)) == 0;
eqn3 = ((-1/(113.62))*c(1) +  (-1/(20.45))*c(2) + (-1/(11.78))*c(3) + (-1/(1.69))*c(4)) == 0;

% Obtain numerical solution of x y and z
[s1, s2, s3] = vpasolve([eqn1, eqn2, eqn3], [x y z]);
estimate = [double(s1), double(s2) , double(s3)];