F1 = 200;
F2 = 2000;
L = 500;
Fs2=10000;
T=(0:L)/Fs2;
Y1 = 5*sin(2*pi*T*F1);
Y2 = sin(2*pi*T*F2);

A = Y1 .* Y2;
A_FFT = fft(A);
B = A .* Y2;
B_FFT = fft(B);
N = (0:L)*Fs2/L;

subplot(5, 1, 1);
plot(T,Y1);
title('X');

subplot(5, 1, 2);
plot(T,Y2);
title('P');

subplot(5, 1, 3);
plot(N,abs(A_FFT));
title('Amplitude of FFT(A)');

subplot(5, 1, 4);
plot(T,B);
title('C');

subplot(5, 1, 5);
plot(N,abs(B_FFT));
title('Amplitude of FFT(C)');
