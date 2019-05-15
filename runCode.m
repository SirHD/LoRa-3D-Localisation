function runCode(algorithm)
 n = 0;
 
 % Initialize Map
 hold on;
 fig = figure;
 scatter(node1pos(1,1), node1pos(1,2), node1pos(1,3), "filled", "black" );
 scatter(node2pos(1,1), node2pos(1,2), node2pos(1,3), "filled", "black" );
 scatter(node3pos(1,1), node3pos(1,2), node3pos(1,3), "filled", "black" );
 scatter(node4pos(1,1), node4pos(1,2), node4pos(1,3), "filled", "black" );
 Map();
 
 while true
     n1 = 0;
     n2 = 0;
     n3 = 0;
     n4 = 0; 
    %obtain node information from data.txt file
    [n1, n2, n3, n4] = readVals();
    
    %if all RSSI's have been received determine which algorithm to use
    if (n1 ~= 0 || n2 ~= 0 || n3 ~= 0 || n4 ~= 0)
       if strcmp(algorithm, "mle")
            positon = mlexyz(n1,n2,n3,n4);
        
        elseif strcmp(algorithm, "ls")    
            positon = leastSquaresxyz(n1,n2,n3,n4);
        
        elseif strcmp(algorithm, "minmax")    
            positon = minmaxxyz(n1,n2,n3,n4);
            
        end
    end
    
    %delay 2 seconds to wait for new readings from server
    pause(2);
    
 end

end