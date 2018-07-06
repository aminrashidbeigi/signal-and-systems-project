F3 = 4200;
L = 500;
Fs2=10000;
T=(0:L)/Fs2;
Y = sin(2*pi*T*F3);

Y_FFT = fft(Y);
N = (0:L)*Fs2/L;

subplot(3, 1, 1);
plot(T,Y);

subplot(3, 1, 2);
plot(T,Y);
hold on;
stem(T, Y);

subplot(3, 1, 3);
plot(N,abs(Y_FFT));