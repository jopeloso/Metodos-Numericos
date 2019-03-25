function [td,f_sf]=Serie_Trig_Fourier(f,M,fs)

N=length(f);                                   
a0=mean(f); %ao/2
matriz=zeros(M,N);
n=0:N-1;                                    
for k=1:M
    
    c=cos(2*pi*n*k/N);
    s=sin(2*pi*n*k/N); 
    ak=(2/N)*f*c';
    bk=(2/N)*f*s';
    matriz(k,:)=(ak*c+bk*s);
end

f_sf=a0+sum(matriz);
td=n/fs;

  
  