function [C] = Interp_Newton(X,Y)

if nargin<2
    disp('Debe ingresar los vectores de abscisas y ordenadas X e Y');
    return;
end


N=length(X);
M=zeros(N);

D(:,1)=Y;
for j=2:N 
    for k=j:N
        D(k,j)=(D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
        
    end
end 
A=diag(D);

for k=1:N
       V=1;
    for j=1:k-1
        V=conv(V,poly(X(j)));
    end
    M(k,N-k+1:N)=A(k)*V;
end
    
C=sum(M);
