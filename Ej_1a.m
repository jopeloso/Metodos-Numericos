% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 1a

function Vp = Ej_1a (t,v)

Mo=100; %100kg
M1=50;  %50kg
b=0.25; %Hz
fo=10;  %10N

Vp=(fo+Mo*b*exp(-b*t)*v)/(M1+Mo*exp(-b*t));
end