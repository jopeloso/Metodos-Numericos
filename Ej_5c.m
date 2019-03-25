
% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 5c


P=[0 100 200 300 400 500 600 700 800 900 1100 1400 2000 3000];
S=[35.5 35.35 35.06 34.65 34.48 34.39 34.34 34.32 34.33 34.36 34.45 34.58 34.73 34.79];

[C]=Ajuste_Polinomial(P,S,6);

l=0:10:3005;
z=polyval(C,l);

plot(l,z,'b');
title('Aproximacion funcional de grado 6');
legend('Aproximacion funcional de grado 6');
xlabel('Profundidad [m]');
ylabel('Salinidad [ppt]');
xlim([0 3005]);