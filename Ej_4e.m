% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 4e


Ej_4c;  %llamamos al ajuste lineal
Rl
Ej_4d;  %llamamos al ajuste exponencial
Re

%verificamos que coeficiente de correlacion es mejor
A=Re-Rl;
if(A>0) %Re>Rl
    disp('El coeficiente de correlacion del ajuste exponencial es mejor');
else
    disp('El coeficiente de correlacion del ajuste lineal es mejor');
end    