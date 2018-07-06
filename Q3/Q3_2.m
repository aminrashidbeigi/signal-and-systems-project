F1 = 200;
F2 = 2000;
L = 500;
Fs2=10000;
T=(0:L)/Fs2;
Y1 = 5*sin(2*pi*T*F1);
Y2 = sin(2*pi*T*F2);

A = Y1 .* Y2;
A_FFT = fft(A);
N = (0:L)*Fs2/L;

subplot(3, 1, 1);
plot(T,Y1);

subplot(3, 1, 2);
plot(T,Y2);

subplot(3, 1, 3);
plot(N,abs(A_FFT));