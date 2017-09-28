y=0;
y=input(“Give the vector”);
n=0;
n=input(“Give the frequency”);
Dt=input(“Give step”);
z=0;
z=(1/Dt).*ifft(y,n);
