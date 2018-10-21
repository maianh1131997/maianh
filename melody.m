fs=44100;
t=0:1/fs:2;
f1 = 440; 
f2 = 2 * f1
f3 = 3 * f1;
f4 = 4 * f1;
A1 = .3; A2 = A1/2; A3 = A1/3; A4 = A1/4;
w = 0;
y1 = A1 * sin( 2 * pi * f1 * t + w );
y2 = A2 * sin( 2 * pi * f2 * t + w );
y3 = A3 * sin( 2 * pi * f3 * t + w );
y4 = A4 * sin( 2 * pi * f4 * t + w );
y=[y1 y3 y2 y4]
soundsc(y,44100)

audiowrite('melody.wav',y, 44100);
clear g 44100;
z=audioread('melody.wav');
