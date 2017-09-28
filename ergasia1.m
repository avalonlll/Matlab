%Ερώτημα 1
%Νόμος του Nyquist, 1/Τs>=2s0
%cos(100πt) έχει περίοδο T1=0.02sec
%cos(2ooπt) έχει περίοδο T2=0.01sec
%cos(5ooπt) έχει περίοδο T3=0.004sec. Άρα Ts=0.02sec. Άρα s0=25Hz.

% Ερώτημα 2
t=-10:0.0001:10; %ο χρόνος είναι μεταξύ -10 και 10, με βήμα 0.001
x1=cos(2*pi*50*t)+cos(2*pi*100*t)+sin(2*pi*250*t);
plot(t,x1)
legend('First signal');

%Ερώτημα 3
%Για S0=25Hz, Τ=0.04sec και ω=50π
x2=cos(pi*50*t)+cos(pi*50*t)+sin(pi*50*t); %Ανακατασκευασμένο σήμα
plot(t,x1,t,x2,'--r');
legend('First and second(red color) signals');

% Ερώτημα 4
%Έστω s1=40Hz (40>25). Θα είναι, ω=80π.
x3=cos(pi*80*t)+cos(pi*80*t)+sin(pi*80*t); ; %Ανακατασκευασμένο σήμα με s1 μεγαλύτερη της s0
plot(t,x1,t,x2,'--r',t,x3,'--y');
legend('First, second(red color) and third(yellow color) signals');

% Ερώτημα 5
%s2=10Hz (10<25). Θα είναι, ω=20π.
x4=cos(pi*20*t)+cos(pi*20*t)+sin(pi*20*t); ; %Aνακατασκευασμένο σήμα με s2 μικρότερη της s0
plot(t,x1,t,x2,'--r',t,x3,'--y',t,x4,'--m');
legend('First, second(red color), third(yellow color) and fourth(magenda color) signals');
