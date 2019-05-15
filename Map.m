function Map()
max = 32.1;
origin = [0,0];

% The variables a123 to h123 represent faces of walls of the interest areas of Floors 1 to 3 of the test location
a123 = [0; max];
b123 = [0; 6.45];
c123 = [0; 3.45];
d123 = [b123(2); 28.5]; 
e123 = [c123(2);25.5];
f123 = [d123(2);max];
g123 = [e123(2); max];
h123 = [max,0];  

% These variables resprent the faces of the 4 walls of the Lower Ground floor (Floor 0)
a0 = [10.5; max]; b0 = [0, max]; 
c0 = [max, a0(1)]; d0 = [max, 0];

% hei represents the heights of the floors
hei = [0, 3.205;  3.675, 6.83;  7.3, 10.455;  10.925, 14.08];

hold on;
linkdata on;
grid on;
title("Map");
xlabel("x (m)");
ylabel("y (m)");
zlabel("z (m)");

% % Plot Floor 0
% plot3(origin, a0, [hei(1,1), hei(1,1)], "black", "LineWidth", 2);
% plot3(origin, a0, [hei(1,2), hei(1,2)], "black", "LineWidth", 2);
% 
% plot3(b0, [a0(1), a0(1)], [hei(1,1), hei(1,1)], "black", "LineWidth", 2);
% plot3(b0, [a0(1), a0(1)], [hei(1,2), hei(1,2)], "black", "LineWidth", 2);
% 
% plot3([b0(2),b0(2)], c0, [hei(1,1), hei(1,1)], "black", "LineWidth", 2);
% plot3([b0(2),b0(2)], c0, [hei(1,2), hei(1,2)], "black", "LineWidth", 2);
% 
% plot3(d0, [max, max], [hei(1,1), hei(1,1)], "black", "LineWidth", 2);
% plot3(d0, [max, max], [hei(1,2), hei(1,2)], "black", "LineWidth", 2);   


% Plot floor 1
plot3(origin, a123, [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3(origin, a123, [hei(2,2), hei(2,2)],"black", "LineWidth", 2);

plot3(b123, origin, [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3(b123, origin, [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3([b123(2),b123(2)], c123, [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3([b123(2),b123(2)], c123, [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3(b123,origin, [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3(b123,origin, [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3(d123, [c123(2),c123(2)], [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3(d123, [c123(2),c123(2)], [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3([d123(2), d123(2)], e123, [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3([d123(2), d123(2)], e123, [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3(f123, [e123(2), e123(2)], [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3(f123, [e123(2), e123(2)], [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3([max,max], g123, [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3([max,max], g123, [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

plot3(h123, [max, max], [hei(2,1), hei(2,1)], "black", "LineWidth", 2);
plot3(h123, [max, max], [hei(2,2), hei(2,2)], "black", "LineWidth", 2);

% % Plot floor 2
% plot3(origin, a123, [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3(origin, a123, [hei(3,2), hei(3,2)],"black", "LineWidth", 2);
% 
% plot3(b123, origin, [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3(b123, origin, [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3([b123(2),b123(2)], c123, [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3([b123(2),b123(2)], c123, [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3(b123,origin, [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3(b123,origin, [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3(d123, [c123(2),c123(2)], [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3(d123, [c123(2),c123(2)], [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3([d123(2), d123(2)], e123, [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3([d123(2), d123(2)], e123, [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3(f123, [e123(2), e123(2)], [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3(f123, [e123(2), e123(2)], [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3([max,max], g123, [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3([max,max], g123, [hei(3,2), hei(3,2)], "black", "LineWidth", 2);
% 
% plot3(h123, [max, max], [hei(3,1), hei(3,1)], "black", "LineWidth", 2);
% plot3(h123, [max, max], [hei(3,2), hei(3,2)], "black", "LineWidth", 2);


% % Plot floor 3
% plot3(origin, a123, [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3(origin, a123, [hei(4,2), hei(4,2)],"black", "LineWidth", 2);
% 
% plot3(b123, origin, [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3(b123, origin, [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3([b123(2),b123(2)], c123, [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3([b123(2),b123(2)], c123, [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3(b123,origin, [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3(b123,origin, [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3(d123, [c123(2),c123(2)], [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3(d123, [c123(2),c123(2)], [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3([d123(2), d123(2)], e123, [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3([d123(2), d123(2)], e123, [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3(f123, [e123(2), e123(2)], [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3(f123, [e123(2), e123(2)], [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3([max,max], g123, [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3([max,max], g123, [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
% 
% plot3(h123, [max, max], [hei(4,1), hei(4,1)], "black", "LineWidth", 2);
% plot3(h123, [max, max], [hei(4,2), hei(4,2)], "black", "LineWidth", 2);
%    
   

end