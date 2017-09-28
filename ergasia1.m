%������� 1
%����� ��� Nyquist, 1/�s>=2s0
%cos(100�t) ���� ������� T1=0.02sec
%cos(2oo�t) ���� ������� T2=0.01sec
%cos(5oo�t) ���� ������� T3=0.004sec. ��� Ts=0.02sec. ��� s0=25Hz.

% ������� 2
t=-10:0.0001:10; %� ������ ����� ������ -10 ��� 10, �� ���� 0.001
x1=cos(2*pi*50*t)+cos(2*pi*100*t)+sin(2*pi*250*t);
plot(t,x1)
legend('First signal');

%������� 3
%��� S0=25Hz, �=0.04sec ��� �=50�
x2=cos(pi*50*t)+cos(pi*50*t)+sin(pi*50*t); %����������������� ����
plot(t,x1,t,x2,'--r');
legend('First and second(red color) signals');

% ������� 4
%���� s1=40Hz (40>25). �� �����, �=80�.
x3=cos(pi*80*t)+cos(pi*80*t)+sin(pi*80*t); ; %����������������� ���� �� s1 ���������� ��� s0
plot(t,x1,t,x2,'--r',t,x3,'--y');
legend('First, second(red color) and third(yellow color) signals');

% ������� 5
%s2=10Hz (10<25). �� �����, �=20�.
x4=cos(pi*20*t)+cos(pi*20*t)+sin(pi*20*t); ; %A���������������� ���� �� s2 ��������� ��� s0
plot(t,x1,t,x2,'--r',t,x3,'--y',t,x4,'--m');
legend('First, second(red color), third(yellow color) and fourth(magenda color) signals');
