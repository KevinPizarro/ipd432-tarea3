% command2dev(device,instruction)
function out = command2dev(device, command, BRAM)
    if(nargin < 3)
        BRAM = '';
    end
    switch command
        case 'readVec'
            if (BRAM(5) == 'A') % Verify if it is BRAMA
                write(device,3,"uint8");
            else % Asume the other it is BRAMB
                write(device,4,"uint8");
            end
            bytes = 1024;
        case 'sumVec'
            write(device,5,"uint8");
            bytes = 1024;
        case 'avgVec'
            write(device,6,"uint8");
            bytes = 1024;
        case 'manDist'
            write(device,7,"uint8");
            bytes = 3;
        case 'eucDist'
            write(device,8,"uint8");
            bytes = 2;
        otherwise
            return
    end
%     bytes = device.NumBytesAvailable;
    data = read(device,bytes,"uint8");
    if(command(4) == 'D') % Distance command
        data = flip(data);
        num = '';
        for i = 1:length(data)
            hex = dec2hex(data(i),2);
            num = strcat(num,hex);
        end
        out = hex2dec(num);
        disp('Distance stored');
    else
        out = data';
        disp('Vector stored');
    end
end
