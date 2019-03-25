% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 4b

function X = sust_atras(A,B)
    if (det(A) == 0)
        error ('no hay solucion unica');
    end
    
    if (nargin<2)
        error('Debe ingresar Martiz Tiangular Superior y Vector Independiente');
    end

    N=size(A,1);
    X=zeros(N,1);     
    X(N)=B(N)/A(N,N);   
    for k = N-1:-1:1
        X(k)=(B(k)-A(k,k+1:N)*X(k+1:N))/A(k,k); 
    end
end