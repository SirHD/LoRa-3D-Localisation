function [dist] = distFunct(A, RSSI, n)
%Estimate distance from node
dist = 10^((A - RSSI)/(10*n));

end