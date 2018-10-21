Z = fft(z);
plot(abs(Z))

N = 44100 
transform = fft(z,N)/N;
magTransform = abs(transform);

faxis = linspace(-fs/2,fs/2,N);
plot(faxis,fftshift(magTransform));
xlabel('Frequency (Hz)')

axis([0 length(faxis)/2, 0 max(magTransform)]) 

xt = get(gca,'XTick');  
set(gca,'XTickLabel', sprintf('%.0f|',xt))
