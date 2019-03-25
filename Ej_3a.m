% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 3a
clear all;


y=zeros(1,3000);
y(1:1000)=5;
tdig=0:1/1000:3-1/1000;


title('Señal digitalizada');
plot(tdig,y,'b.'); 
xlabel('tiempo(s)');
ylabel('vi(t)(V)');