% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 1a

N=30/0.01;  %Cantidad de puntos
to=0;   %0s
tf=30;  %30s
vo=0;   %0s

[v,t]=Ec_Dif_Runge_Kutta_O4_Sistemas('Ej_1a',to,tf,vo,N);

figure;

plot(t,v,'r');
title('Ejercicio 1a'); 
xlabel('tiempo [s]');
ylabel('velocidad [m/s]');
