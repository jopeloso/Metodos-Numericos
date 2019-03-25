function[ck,y_r]=Metodo_FalsaPosicion(f,a,b,error,N)
%le tengo que pasar el valor de N
if nargin<5
       display('Debe ingresar 5 parámetros de entrada');
       return;
end
ak=a;
bk=b;
y_ak=feval(f,ak);
y_bk=(feval(f,bk));
if(y_ak*y_bk)>0
    display('No existe raiz en ese intervalo');
    return;
end

for k=1:N  
    
    ck(k)=bk - (y_bk*(bk-ak)/(y_bk-y_ak));
    y_ck=feval(f,ck(k));
    
    if y_ck==0
        %ak=ck;
        %bk=ck;
    else
        if (y_ak*y_ck)<0
            bk=ck(k);
        else ak=ck(k);
            y_ak=y_ck;
        end
        %err=abs(bk-ak); %abs es valor absoluto
        if abs(y_ck)<error
            disp('Se llego al minimo error requerido');
            break;
        end
    end
    
    ck(k)=bk - (y_bk*(bk-ak)/(y_bk-y_ak)); % ck para metodo de falsa posicion
    %r=ck;
    %err=abs(bk-ak);% abs es valor absoluto
    %y_r=feval(f,r);
   
end
 y_r=feval(f,ck(k));
 disp(strcat('cantidad de iteraciones:',num2str(k) ));%convierte numerps a un string