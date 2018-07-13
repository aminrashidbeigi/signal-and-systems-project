F2 = 1000;
L = 500;
Fs2=10000;
T=(0:L)/Fs2;
Y = sin(2*pi*T*F2);

Y_FFT = fft(Y);
N = (0:L)*Fs2/L;

subplot(3, 1, 1);
plot(T,Y);
title('Y');

subplot(3, 1, 2);
plot(T,Y);
hold on;
stem(T, Y);
title('Y Sampled');

subplot(3, 1, 3);
plot(N,abs(Y_FFT));
title('Amplitude of FFT(Y)');