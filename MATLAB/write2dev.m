% write2dev(device,'vectorA.txt','BRAMA')
function write2dev(device,file,BRAM)
    if (BRAM(5) == 'A') % Verify if it is BRAMA
        write(device,1,"uint8");
    else % Asume the other it is BRAMB
        write(device,2,"uint8");
    end
    f = importdata(file);
    for i = 1:length(f)
        write(device,f(i),"uint8");
    end
    disp('Vector wrote');
end