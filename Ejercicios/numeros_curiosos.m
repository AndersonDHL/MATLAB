%---------------------------------------------------------------------------------
%----------------------------------- Número curioso ------------------------------
%---------------------------------------------------------------------------------
% Un número es curioso si al eliminar un dígito de él, y dividir el número 
% resultante entre el dígito eliminado, el resultado es exacto.

% Código
clear memory;
clear command history;
clear all;
clc;
y=8;
x=2;
while y>x
    y=input('INGRESE EL LIMITE INFERIOR :');
    while y<0
        disp('EL NUMERO NO ES NATURAL. INGRESE OTRA VEZ')
        y=input('INGRESE EL LIMITE INFERIOR :');
    end
    x=input('INGRESE EL LIMITE SUPERIOR :');
    while x<0
        disp('EL NUMERO NO ES NATURAL. INGRESE OTRA VEZ')
        x=input('INGRESE EL LIMITE SUPERIOR :');
    end
end
switch x
    case -1
        x=100000;
    case 0
        x=1000000;
end
e=0;
m=[];
for n=y:x
    a=1;
    i=0;
    while a~=0
        i=i+1;
        a=floor(n/(10^i));
    end
    for j=[1:i]
        b=mod(n,(10^j));
        d=sqrt(n);
        if d==b
            e=e+1;
            m=[m,n];
            break
        else
            if d<b
                break
            end
        end
    end
end
disp(' ')
disp(['EN EL RANGO ES DE "',num2str(y),'" A "',num2str(x),'" HAY ',num2str(e),' NUMEROS CURIOSOS'])
disp(' ')
A=input('INGRESE "1" PARA SABER QUE NUMEROS LO CONFORMAN :');
if A==1
    disp('LOS NUMEROS CURIOSOS SON :')
    disp(m)
end