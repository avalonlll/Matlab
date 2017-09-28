x=0;
y=0;
z=0;
n=8;
Dt=0.008;
x=[1 0 0 1 0 1 0 1]; %ASCII for Greek character ×
y=Dt*fft(x);
z=(1/Dt).*ifft(y,n)
