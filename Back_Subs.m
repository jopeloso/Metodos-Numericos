%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 1 TP#1 M�todos Num�ricos
%%%
%%% Resoluci�n hacia atr�s de Sistemas Lineales
%%% de Ecuaciones Triangularizados Superiormente
%%%
%%% function X = Back_Subs(A,B)
%%%
%%% Par�metros de Entrada:
%%%    A = Matriz Triangular Superior No Singular (ceros bajo diag. princ)
%%%    B = Vector Independiente
%%%
%%% Par�metro de Salida
%%%
%%%      X = Vector Soluci�n de AX = B
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function X = Back_Subs(A,B)

if nargin<2
    disp('Debe ingresar Martiz Tiangular Superior y Vector Independiente');
    return;
end

N=size(A,1);
X=zeros(N,1);     % Vector Resultado
X(N)=B(N)/A(N,N);   % Valor inicial del resultado
for k = N-1:-1:1
    X(k)=(B(k)-A(k,k+1:N)*X(k+1:N))/A(k,k); 
end