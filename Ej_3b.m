% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 3b

clear all;
y=zeros(1,3000);
y(1:1000)=5;

[t,f_sf]=Serie_Trig_Fourier(y,3000/2,1000);
[t1,f_sf1]=Serie_Trig_Fourier(y,1,1000);
[t5,f_sf5]=Serie_Trig_Fourier(y,5,1000);
[t10,f_sf10]=Serie_Trig_Fourier(y,10,1000);
[t30,f_sf30]=Serie_Trig_Fourier(y,30,1000);
[t50,f_sf50]=Serie_Trig_Fourier(y,50,1000);

plot(t,f_sf,'b',t1,f_sf1,'r',t5,f_sf5,'g',t10,f_sf10,'c',t30,f_sf30,'k',t50,f_sf50,'m'); 
xlabel('tiempo(s)');
ylabel('vi(t)(V)');
title('Desarrollos de Serie Trigonometrica de Fourier');
legend('Representacion discreta de f(t)','M=1','M=5', 'M=10', 'M=30', 'M=50');