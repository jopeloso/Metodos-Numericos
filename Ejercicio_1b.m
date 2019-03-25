% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 1b

to=0;   %0s
tf=50;  %30s
N=(tf-to)/0.01;  %Cantidad de puntos
vo=0;   %0s

[v,t]=Ec_Dif_Runge_Kutta_O4_Sistemas('Ej_1b',to,tf,vo,N);

figure;

plot(t,v,'b');
title('Ejercicio 1b')
xlabel('tiempo [s]');
ylabel('velocidad [m/s]');