% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 5d



P=[0 100 200 300 400 500 600 700 800 900 1100 1400 2000 3000];
S=[35.5 35.35 35.06 34.65 34.48 34.39 34.34 34.32 34.33 34.36 34.45 34.58 34.73 34.79];


[C,L]=Interp_Lagrange(P,S);
l1=0:10:3005;
z1=polyval(C,l1);
subplot(3,1,1);
plot(P,S,'*r',l1,z1,'m');
hold on;
title('Polinomio interpolador de Lagrange');
hold off;

[C]=Interp_Newton(P,S);
l2=0:10:3005;
z2=polyval(C,l2);
subplot(3,1,2);
plot(P,S,'*r',l2,z2,'y');
hold on;
title('Polinomio interpolador de Newton');
hold off;


[C]=Ajuste_Polinomial(P,S,6);
l3=0:10:3005;
z3=polyval(C,l3);
subplot(3,1,3);
plot(P,S,'*r',l3,z3,'c');
hold on;
title('Aproximacion funcional de grado 6');
hold off;

disp('Los polinomios interpoladores de Lagrange y Newton son los que aproximan con mayor exactitud');
