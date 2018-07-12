F1 = 2000;
F2 = 1000;
F3 = 4200;
L = 500;
Fs2=5000;
T=(0:L)/Fs2;
Y1 = sin(2*pi*T*F1);
Y2 = sin(2*pi*T*F2);
Y3 = sin(2*pi*T*F3);
Y = Y1 + Y2 + Y3;

Y_FFT = fft(Y);
N = (0:L)*Fs2/L;

filtered = filter(f0, 1, Y);
filtered_FFT = fft(filtered);

subplot(5, 1, 1);
plot(T,Y);

subplot(5, 1, 2);
plot(T,Y);
hold on;
stem(T, Y);

subplot(5, 1, 3);
plot(N, abs(fftshift(Y_FFT)));

subplot(5, 1, 4);
plot(T, filtered);

subplot(5, 1, 5);
plot(N, abs(fftshift(filtered_FFT)));