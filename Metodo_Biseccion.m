function[ck,y_r]=Metodo_Biseccion(f,a,b,error)
if nargin<4
       display('Debe ingresar 4 parámetros de entrada');
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

N=ceil((log(b-a)-log(error))/log(2)); %para hallar la cantidad de iteraciones necesarias para un determinado delta
for k=1:N                             %ceil redondea para arriba
    ck(k)=(ak+bk)/2;
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
    ck(k)=(ak+bk)/2;
    %r=ck(k);
    %err=abs(bk-ak);% abs es valor absoluto
    %y_r=feval(f,r);
   
end
 y_r=feval(f,ck(k));
 disp(strcat('cantidad de iteraciones:',num2str(k) ));%convierte numerps a un string