function [y,t] = Ec_Dif_Runge_Kutta_O4(f,t0,tf,y0,M)

%para evitar que falten argumentos, lo chequeo verificando que el numero de
%argumentos de entrada no sea menor a 5

if nargin<5
    %uso error en lugar de display para que se corte el programa en si se
    %cumple que nargin<5
    error('Debe ingresar función F, tiempos iniciales y finales t0, tf, vector columna de condiciones iniciales Y0 y pasos M');
    %si uso error no pongo el return;
end

h=(tf-t0)/M;           % Intervalo de tiempo 
t=t0:h:tf;             % Vector de Tiempo (M+1 valores)
y=zeros(size(t));      %defino Y para que no vaya cambiando de tam.
y(1)=y0;               %inicializo
    
for k=1:M
    %construyo f1, f2, f3 y f4
    f1=feval(f,t(k),y(k));
    f2=feval(f,t(k)+h/2,y(k)+h*f1/2);
    f3=feval(f,t(k)+h/2,y(k)+h*f2/2);
    f4=feval(f,t(k)+h,y(k)+h*f3);
    %con f1, f2, f3 y f4 aplico la ecuacion para runge kutta
    y(k+1)=y(k)+h*(f1+2*f2+2*f3+f4)/6;
end