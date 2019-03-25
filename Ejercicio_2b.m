% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 2b

a=0;
b=40;
error=0.001;
N=100;

[ck,y_r]= Metodo_FalsaPosicion('Ej_2a',a,b,error,N);

largo=length(ck);
raiz=ck(largo);
disp(strcat('la frecuencia angular w es:',num2str(raiz) ));

f=raiz/(2*pi);
disp(strcat('la frecuencia f  es:',num2str(f) ));


