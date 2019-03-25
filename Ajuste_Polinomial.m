function E=Ajuste_Polinomial(xk,yk,M)

if nargin<2
    disp('Debe ingresar las x, los y.');
    return;
end



for i=1:M+1
      F(:,i)=xk'.^(i-1);  
end

A=F'*F; 
B=F'*yk'; 
  
[c]=Triang_Gauss(A,B); %tambien hace sustitucion 


E=[c];