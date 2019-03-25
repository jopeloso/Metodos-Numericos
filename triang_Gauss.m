% Materia: Metodos Numericos
% Trabajo Practico Integrador 2016
% Alumnas: Josefina Peloso, Marlene Poet y Macarena Valls
% Ejercicio 4b

function [A_new,B_new] = triang_Gauss(A,B)

if nargin<2
    disp('Debe ingresar Martiz Cuadrada A y Vector Independiente B');
    return;
end

N=size(A,1);
X=zeros(N,1);     % Vector Resultado
C=zeros(1,N+1);   % Vector auxiliar para cambio de filas por elemento pivotante
AugA=[A B];
for p=1:N-1
    % Determinación del Pivoteo Parcial para la columna p
    [~,j]=max(abs(AugA(p:N,p))); % Extracción del máximo elemento en valor absoluto de la columna p 
    % intercambiado de la fila p por la fila j
    C=AugA(p,:);
    AugA(p,:)=AugA(j+p-1,:); % Cuidado!!!! se busca el máximo en la posición j pero estoy evaluando desde la fila p
    AugA(j+p-1,:)=C;
    if AugA(p,p)==0
        disp('A es una Matriz singular, no se puede aplicar este método de resolución');
        return;
    end
    % Proceso de eliminación para la columna p
    for r=p+1:N
       mult=AugA(r,p)/AugA(p,p);
       AugA(r,p:N+1)=AugA(r,p:N+1)-mult*AugA(p,p:N+1);
    end
end

A_new=AugA(:,1:N);
B_new=AugA(:,N+1);

end