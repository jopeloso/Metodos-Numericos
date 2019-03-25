% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 2c

a=0;
b=40;
error=0.000001;
N=100;

[r,err,y_r]= secante('Ej_2a',b,a,error);

largo=length(r);
 raiz=r(largo);
 disp(strcat('la frecuencia angular w es:',num2str(raiz) ));
 
 f=raiz/(2*pi);
 disp(strcat('la frecuencia f  es:',num2str(f) ));


