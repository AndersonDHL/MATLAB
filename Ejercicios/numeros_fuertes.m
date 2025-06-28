%---------------------------------------------------------------------------------
%------------------------------------ Número fuerte ------------------------------
%---------------------------------------------------------------------------------
% Un número es fuerte si la diferencia entre el número y la suma de los 
% factoriales de sus dígitos es igual a cero.

% Código
clear memory;
clear command history;
clear all;
clc;
g=8;
n=2;
while g>n
    g=input('INGRESE EL LIMITE INFERIOR :');
    while g<0
        disp('EL NUMERO NO ES NATURAL. INGRESE OTRA VEZ')
        g=input('INGRESE EL LIMITE INFERIOR :');
    end
    n=input('INGRESE EL LIMITE SUPERIOR :');
    while n<0
        disp('EL NUMERO NO ES NATURAL. INGRESE OTRA VEZ')
        n=input('INGRESE EL LIMITE SUPERIOR :');
    end
end
switch n
    case -1
        n=100000;
    case 0
        n=1000000;
end
x=[];
d=0;
y=[];
for j=g:n
    for i=1:j
        if rem(j,i)==0
            if isprime(i)==1
                x=[x,i];
            end
        end      
    end
    a=x.^2;
    b=0;
    for k=a
        c=rem(j,k);
        b=b+c;
    end
    if b==0
        d=d+1;
        y=[y,j];
    end
    x=[];
end
disp(' ')
disp(['EN EL RANGO ES DE "',num2str(g),'" A "',num2str(n),'" HAY ',num2str(d),' NUMEROS FUERTES'])
disp(' ')
num=input('PARA SABER QUE NUMEROS LO CONFORMAN INGRESE EL "1" :');
if num==1
    disp('LOS NUMEROS SON :')
    disp(y)
end