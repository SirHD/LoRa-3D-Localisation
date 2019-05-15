function estimate = minmax(x1,y1,z1,d1,x2,y2,z2,d2,x3,y3,z3,d3,x4,y4,z4,d4)
% Obtain max and min vectors for all dimensions
x_max = [x1+d1; x2+d2; x3+d3; x4+d4;];    
x_min = [x1-d1; x2-d2; x3-d3; x4-d4;];
      
y_max = [y1+d1; y2+d2; y3+d3; y4+d4;];    
y_min = [y1-d1; y2-d2; y3-d3; y4-d4;];
      
z_max = [z1+d1; z2+d2; z3+d3; z4+d4;];
z_min = [z1-d1; z2-d2; z3-d3; z4-d4;];

% Obtain minima and maxima max and min vectors respectively
x_min_max = min(x_max);
x_max_min = max(x_min);
y_min_max = min(y_max);
y_max_min = max(y_min);
z_min_max = min(z_max);
z_max_min = max(z_min);

% Average minmax coordinates to obtain estimates
x = (x_min_max + x_max_min)/2;
y = (y_min_max + y_max_min)/2;
z = (z_min_max + y_max_min)/2;

estimate = [x,y,z];
end 