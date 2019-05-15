function estim = trilat(x1,y1,z1,d1,x2,y2,z2,d2,x3,y3,z3,d3,x4,y4,z4,d4)
                                               
%Coordinate estimation function for  target node in 3D space with 4 referencee nodes

%   Elements of X numerator matrix
x11 = (d1^2-d4^2)-(x1^2-x4^2)-(y1^2-y4^2)-(z1^2-z4^2); 
x21 = (d2^2-d4^2)-(x2^2-x4^2)-(y2^2-y4^2)-(z2^2-z4^2); 
x31 = (d3^2-d4^2)-(x3^2-x4^2)-(y3^2-y4^2)-(z3^2-z4^2);  

x12 = 2*(y4-y1); 
x22 = 2*(y4-y2); 
x32 = 2*(y4-y3); 

x13 = 2*(z4-z1);
x23 = 2*(z4-z2);
x33 = 2*(z4-z3);


% X numerator matrix
num_x = [ x11, x12, x13; 
          x21, x22, x23; 
          x31, x32, x33; ];
      
num_x = det(num_x);
        
%   Elements of Y numerator matrix
y11 = 2*(x4-x1); y12 = x11; y13 = 2*(z4-z1);
y21 = 2*(x4-x2); y22 = x21; y23 = 2*(z4-z2);
y31 = 2*(x4-x3); y32 = x31; y33 = 2*(z4-z3); 

%   Y numerator matrix
num_y = [ y11,y12,y13;
          y21,y22,y23;
          y31,y32,y33; ];

num_y = det(num_y);

%   Elements of Z numerator matrix
z11 = 2*(x4-x1); z12 = 2*(y4-y1); z13 = x11;
z21 = 2*(x4-x2); z22 = 2*(y4-y2); z23 = x21; 
z31 = 2*(x4-x3); z32 = 2*(y4-y3); z33 = x31; 

%   Y numerator matrix`
num_z = [ z11,z12,z13;
          z21,z22,z23;
          z31,z32,z33; ];
      
num_z = det(num_z);

%   Elements of denominator matrix
d11 = 2*(x4-x1); d12 = 2*(y4-y1); d13 = 2*(z4-z1);
d21 = 2*(x4-x2); d22 = 2*(y4-y2); d32 = 2*(z4-z2);
d31 = 2*(x4-x3); d23 = 2*(y4-y3); d33 = 2*(z4-z3); 

d_matrix = [ d11,d12,d13;
             d21,d22,d23;
             d31,d32,d33; ];

d_matrix = det(d_matrix);

% Calculate positions
x_est = num_x/d_matrix; 
y_est = num_y/d_matrix;
z_est = num_z/d_matrix;

estim = [x_est, y_est, z_est];

end