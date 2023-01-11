%% Primero setear puerto serial
disp("Puertos seriales disponibles:")
disp(serialportlist("available"))
COM = input("Ingrese puerto serial: ",'s');
device = serialport(COM,115200,'Parity','none','DataBits',8,'StopBits',1);

% El usuario deberá escribir el valor del puerto manualmente en la consola
% una vez que los puertos disponibles se muestren en pantalla

%% Operaciones Host
N=1024;  % se define el numero de elementos de cada vector

% Se generan vectores A y B de 1024 elementos con numeros positivos 
A = ceil(rand(N,1)*254);
B = ceil(rand(N,1)*254);

% Se guardan vectores A y B (cada uno de una columna de 1024 filas) en un
% archivo de texto. Cada linea del archivo contiene un elemento.
h = fopen('VectorA.txt', 'w');
fprintf(h, '%i\n', A);
fclose(h);
h = fopen('VectorB.txt', 'w');
fprintf(h, '%i\n', B);
fclose(h);

% Calcula valores de referencia para las operaciones, realizadas en forma local en el host
% La suma en host se encuentra programada para restringir operaciones 8 bit
host_sumVec = A+B;
for i = 1:N
    if (host_sumVec(i) >= 256)
        host_sumVec(i) = host_sumVec(i) - 256;
    end
end
host_avgVec = double((A+B)/2);
host_man = sum(abs(A-B));
% host_euc = sqrt(sum((A-B).^2));

%% A partir de aca se realizan las operaciones por medio de comandos al coprocesador
% writeVec escribe un vector almacenado en un archivo de texto en la BRAM indicada por medio de la UART
write2dev(device,'vectorA.txt','BRAMA');
write2dev(device,'vectorB.txt','BRAMB');

% readVec lee el contenido de la BRAM indicada por medio de la UART
device_VecA = command2dev(device,'readVec', 'BRAMA');
device_VecB = command2dev(device,'readVec', 'BRAMB');

device_sumVec = command2dev(device,'sumVec'); % suma elemento a elemento en el coprocesador
device_avgVec = command2dev(device,'avgVec'); % promedio entre los vectores en el coprocesador
device_man = command2dev(device,'manDist'); % cálculo de la distancia de Manhattan en el coprocesador
% device_euc = command2dev(device,'eucDist'); % cálculo de la distancia de Manhattan en el coprocesador

%% Validacion
diffsumVec = sum(host_sumVec - device_sumVec); % diferencia = 0
diffavgVec = sum(host_avgVec - device_avgVec); % diferencia = media del error de promedio ~256
diffman = host_man - device_man; % diferencia = 0
% diffeuc = host_euc - device_euc; % diferencia = números decimales de la raiz 