function I = Regla_Simpson_Comp(f,a,b,M)
h=(b-a)/(2*M);
x=a:h:b;
I=0;
for v=1:M
    I=I+feval(f,x(2*v-2))+4*feval(f,x(2*v-1))+feval(f,x(2*v));
end
I=I*h/3;

    