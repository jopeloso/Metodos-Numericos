%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 7 TP#1 M�todos Num�ricos
%%%
%%% Triangularizaci�n Gaussiana
%%% de Ecuaciones Triangularizados Superiormente.
%%% Tiangularizado el sistema, Se pasa al algoritmo
%%% back_Sub(A,B) para la resoluci�n final. 
%%%
%%% function X = Tiang_Gauss(A,B)
%%%
%%% Par�metros de Entrada:
%%%       A = Matriz No Singular
%%%       B = Vector Independiente
%%%
%%% Par�metro de Salida
%%%
%%%      X = Vector Soluci�n de AX = B
%%%
%%% MSc. Ing. Franco Pessana
%%% Copyright 2009
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function X = Triang_Gauss(A,B)

if nargin<2
    disp('Debe ingresar Martiz Cuadrada A y Vector Independiente B');
    return;
end

N=size(A,1);
X=zeros(N,1);     % Vector Resultado
C=zeros(1,N+1);   % Vector auxiliar para cambio de filas por elemento pivotante
AugA=[A B];
for p=1:N-1
    % Determinaci�n del Pivoteo Parcial para la columna p
    [Y,j]=max(abs(AugA(p:N,p))); % Extracci�n del m�ximo elemento en valor absoluto de la columna p 
    % intercambiado de la fila p por la fila j
    C=AugA(p,:);
    AugA(p,:)=AugA(j+p-1,:); % Cuidado, se busca el m�ximo en la posici�n j pero estoy evaluando desde la fila p
    AugA(j+p-1,:)=C;
    if AugA(p,p)==0
        disp('A es una Matriz singular, no se puede aplicar este m�todo de resoluci�n');
        return;
    end
    % Proceso de eliminaci�n para la columna p
    for r=p+1:N
       mult=AugA(r,p)/AugA(p,p);
       AugA(r,p:N+1)=AugA(r,p:N+1)-mult*AugA(p,p:N+1);
    end
end

A_new=AugA(:,1:N);
B_new=AugA(:,N+1);
X = Back_Subs(A_new,B_new);