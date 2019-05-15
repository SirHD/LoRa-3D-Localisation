function posMat = maxLikexyz(node1, node2, node3, node4)
%Function to run estimation of distance

a = size(node1);

%Estimate distances from each node
 for i = 1 : a(1)
    dist1(i) = distFunct(node1(i,1), node1(i,2), node1(i,3));
    dist2(i) = distFunct(node2(i,1), node2(i,2), node2(i,3));
    dist3(i) = distFunct(node3(i,1), node3(i,2), node3(i,3));
    dist4(i)=  distFunct(node4(i,1), node4(i,2), node4(i,3));
    
    temp = maxLike(node1(i,4), node1(i,5), node1(i,6), dist1(i), node2(i,4), node2(i,5), node2(i,6), dist2(i), node3(i,4), node3(i,5), node3(i,6), dist3(i), node4(i,4), node4(i,5), node4(i,6), dist4(i));
    
    posMat(i,1) = temp(1,1);
    posMat(i,2) = temp(1,2);
    posMat(i,3) = temp(1,3);
    
 end

end