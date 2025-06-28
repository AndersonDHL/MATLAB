%---------------------------------------------------------------------------------
%---------------------------------- NÚMERO PERFECTO ------------------------------
%---------------------------------------------------------------------------------
% Un número es perfecto si es igual a la suma de sus divisores propios(excluyendo 
% el número mismo)

% Código
clear memory;
clear command history;
clear all;
clc;
XX=input('Ingrese un numero cualquiera : ');
disp(' ')
if XX>0
np = 0;
% Calcula la cantidad de numeros perfectos entre 1 y XX
for II = 1:XX;
    suma = 1;
    z=round(II/2);
    %Realiza un bucle para saber cuantos divisores
    for I = 2:z; 
        if rem(II,I)== 0 %Tiene el número que se esta probando
            suma = suma + II / I; %Acumulación de todo los divisores
        end
    end
    %Verifica si la suma de los divisores es Idéntico al número probado a ser perfecto
    if II == suma 
        np = np + 1; %Cuenta la cantidad de números perfectos existentes en el rango
        disp(['El número ',num2str(np),' es: ',num2str(II)])
    end
end
disp(' ')
disp(['la cantidad de numeros perfectos en total es = ',num2str(np)])
else
disp(' ')
disp(' ')
disp(['debe ingresar cantidad mayor que cero'])
end
