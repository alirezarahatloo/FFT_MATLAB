Ts = 1/500;
t = 0:Ts:0.5-Ts;
fs = 1/Ts;
x = sin(2*pi*100*t);
n = length(x);
x = x+0.5*rand(1,n);
plot(t,x)
xlabel('Time (seconds)')
ylabel('Amplitude')
y = fft(x);

fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);
%plot(fshift,abs(yshift))
%xlabel('Frequency (Hz)')
%ylabel('Magnitude')
