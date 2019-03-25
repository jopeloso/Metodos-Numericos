function [A,B,R] = Ajuste_Lineal(xk,yk)

if nargin<2
    disp('Debe ingresar las x, los y.');
    return;
end

xprom=mean(xk); %PROMEDIO DE X
yprom=mean(yk); %PROMEDIO DE Y


 A=(yk-yprom)*(xk'-xprom)./((xk-xprom)*(xk'-xprom));%SACO LA PENDIENTE A
 B=yprom-A*xprom; %B ORDENADA AL ORIGEN
 R=(xk-xprom)*(yk'-yprom)/sqrt(((xk-xprom)*(xk'-xprom)).*((yk-yprom)*(yk'-yprom)));
  
   
   
   