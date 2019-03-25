% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 1b

function Vp = Ej_1b (t,v)

Mo=100; %100kg
M1=50;  %50kg
b=0.25; %Hz
fo=10;  %10N
B=5;    %5 N s/m

Vp=(fo+Mo*b*exp(-b*t)*v-B*v)/(M1+Mo*exp(-b*t));
end