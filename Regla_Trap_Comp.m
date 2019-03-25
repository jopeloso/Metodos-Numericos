function I = Regla_Trap_Comp(f,a,b,M)
h=(b-a)/M;
x=a:h:b;
I=0;
for v=1:M
    I=I+feval(f,x(v))+feval(f,x(v+1));
end
I=I*h/2;

    