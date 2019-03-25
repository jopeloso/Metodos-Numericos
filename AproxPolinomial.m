% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 4b


function C = AproxPolinomial(x,y,M)

for a=1:M+1
    F(:,a)=x.^(M+1-a);
end

A = F'*F;
B = F'*y'; 

[An,Bn] = triang_Gauss(A,B);
C = sust_atras(An,Bn);

end