T=1; %duration of each note
fs=8000; %sampling frequency
t=0:1/fs:T; %time duration of each wave
t2a=0:1/fs:T/2; %setting the duration for each wave
t2b=0:1/fs:T*2;
t3=t;
g=0;%counts repetitions
pause=0.05;%duration of silence between two notes
for K = [220*(2^(3/12)) 220*(2^(7/12)) 220 220*(2^(5/12))]
    %vector K contains the sequence of notes
    %based on Nirvana's Drain You main riff
  g=g+1;
  x=sin(2*pi*K*t); %original wave without added effects
  x2a=sin(2*pi*K*(t2a*2)); %one octave higher
  x2b=sin(2*pi*K*(t2b/2)); %one octave lower
  Amp=1:-1/fs:0; %creating the gradually reducing amplitude
  x3=Amp.*sin(2*pi*K*t3); %creating the gradually  fading wave
  ax1=subplot(2,2,1);
  plot(t,x); %placing the generated wave on the plot
  hold on
  z=max(t):max(t)+pause; %creating a gap between the notes
  plot(z,0);
  hold on
  ax2=subplot(2,2,2);
  plot(t2a,x2a);
  hold on 
  z2a=max(t2a):max(t2a)+pause; %creating a gap between the notes
  plot(z2a,0);
  hold on %we are about to use the same plot for another wave
  ax3=subplot(2,2,3);
  plot(t2b,x2b);
  hold on
  z2b=max(t2b):max(t2b)+pause;
  plot(z2b,0);
  hold on
  ax4=subplot(2,2,4);
  plot(t3,x3);
  hold on
  z3=max(t3):max(t3)+pause;
  plot(z3,0);
  hold on
  t=max(t)+pause:1/fs:(max(t)+T+pause); %new time duration
  t2a=max(t2a)+pause:1/fs:(max(t2a)+T/2+pause);
  t2b=max(t2b)+pause:1/fs:(max(t2b)+T*2+pause);
  t3=max(t3)+pause:1/fs:(max(t3)+T+pause);
end 
axis(ax2,[0 g/2+(g*pause) -2 2])%creating the axes, with different ranges
axis(ax3,[0 g*2+(g*pause) -2 2])
axis([ax1 ax4],[0 g+(g*pause) -2 2])
title(ax1,'Original Sine Wave ');%Specifying the titles
title(ax2,'High Pitch Sine Wave ');
title(ax3,'Low Pitch Sine Wave ');
title(ax4,'Fading Sine Wave ');
xlabel(ax1,'Time(s)');%labeling
ylabel(ax1,'Amplitude');
xlabel(ax2,'Time(s)');
ylabel(ax2,'Amplitude');
xlabel(ax3,'Time(s)');
ylabel(ax3,'Amplitude');
xlabel(ax4,'Time(s)');
ylabel(ax4,'Amplitude');
%zooming in each plot is HIGHLY advised
%it makes the structure of each wave more obvious