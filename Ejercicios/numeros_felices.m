%---------------------------------------------------------------------------------
%-------------------------------- Número feliz -----------------------------------
%---------------------------------------------------------------------------------
% Un número es feliz si, al reemplazarlo repetidamente por la suma de los 
% cuadrados de sus dígitos, eventualmente llega al número 1.

% Código
clear memory;
clear command history;
clear all;
clc;
g=8;
x=2;
while g>x
    g=input('INGRESE EL LIMITE INFERIOR :');
    while g<0
        disp('EL NUMERO NO ES NATURAL. INGRESE OTRA VEZ')
        g=input('INGRESE EL LIMITE INFERIOR :');
    end
    x=input('INGRESE EL LIMITE SUPERIOR :');
    while x<0
        disp('EL NUMERO NO ES NATURAL. INGRESE OTRA VEZ')
        x=input('INGRESE EL LIMITE SUPERIOR :');
    end
end
h=0;
m=0;
z=[];
y=[];
for j=g:x
    n=j;
    c=0;
    b=0;
    d=[];
    while n~=1
        for i=[5:-1:0]
            a=floor((n-c)/(10^i));
            c=c+(a*10^i);
            b=b+a^2;
        end
        e=d(d==b);
        d=[d,b];
        if (b-e)==0
            break
        end
        n=b;
        c=0;
        b=0;
    end
    if n==1
        h=h+1;
        y=[y,j];
    else
        m=m+1;
        z=[z,j];
    end
end
disp(' ')
disp(['EN EL RANGO ES DE "',num2str(g),'" A "',num2str(x),'" HAY ',num2str(h),' NUMEROS FELICES Y ',num2str(m),' INFELICES'])
disp(' ')
A=input('INGRESE "1" PARA SABER LOS NUMEROS FELICES Y "2" PAA LOS INFELICES :');
switch A
    case 1
        disp('LOS NUMEROS FELICES SON :')
        disp(y)
    case 2
        disp('LOS NUMEROS INFELICES SON :')
        disp(z)
end
