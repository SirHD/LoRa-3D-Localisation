function [n1,n2,n3,n4] = readVals()
    
    %make character array from data file and convert to cell array
    fp = fileread("data.txt");
    temp = jsondecode(fp);
    
    %get size of array
    x = size(temp);
    
    %initialise node value variables
    n1 = zeros(1,6); n2 = zeros(1,6); n3 = zeros(1,6); n4 = zeros(1,6);
    
    %loop through cell array elements and assign gateway values to their nodr numbers
    for i = 1:x 
        if strcmp(temp{i,1}.gtw_id, "eui-7276ff00390302fd")
            n3 = [-25.21, temp{i,1}.rssi, 2.8, 6.35, 18.89, 4.24];
            
        elseif strcmp(temp{i,1}.gtw_id, "eui-7276ff003903044c")
            n1 = [-16.08, temp{i,1}.rssi, 3.7, 1.05, 27.43, 11.70];
            
        elseif strcmp(temp{i,1}.gtw_id, "eui-7276ff0039030415")
            n2 = [-19.27, temp{i,1}.rssi, 3.2, 5.31, 9.52, 8.07];
            
        elseif strcmp(temp{i,1}.gtw_id, "eui-7276ff003903032")
            n4 = [-22.27, temp{i,1}.rssi, 2.3, 14.61, 10.88, 0.56];
        end
        
        %returns when all node values recieved
        if n1(1) ~= 0 && n2(1) ~= 0 && n3(1) ~= 0 && n4(1) ~= 0
            return
        else
            disp("ERROR RECEIVING NODE VALUES");
        end
        
    end
    
end
