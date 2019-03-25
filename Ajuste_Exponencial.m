% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls


 %y = Cexp Ax

[Ap,Bp]=Ajuste_Lineal(xk,log(yk));
A=Ap;
C=exp(Bp);

y=C*exp(A*xk);

