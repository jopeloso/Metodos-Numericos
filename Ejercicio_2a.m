% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 2a

a=0;
b=40;
error=0.001;

[ck,y_r]= Metodo_Biseccion('Ej_2a',a,b,error);

largo=length(ck);
raiz=ck(largo);
disp(strcat('la frecuencia angular w es:',num2str(raiz) ));

f=raiz/(2*pi);
disp(strcat('la frecuencia f  es:',num2str(f) ));


