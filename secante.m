
% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls


function [p2,e,k]=secante(f,p0,p1,tol)

e = abs(p1-p0);
k = 0;

while e>=tol
    p2=p1-feval(f,p1)*((p1-p0)/(feval(f,p1)-feval(f,p0)));
    p0 = p1;
    p1 = p2;
    e = abs(p1-p0);
    k = k+1;
end