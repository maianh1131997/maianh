r=audiorecorder(44100,16,1);
disp('bat dau ghi am');
recordblocking(r,10);
disp('ket thuc');
g=getaudiodata(r);
audiowrite('orig_input.wav',g, 44100);
clear g 44100;
y=audioread('orig_input.wav');
