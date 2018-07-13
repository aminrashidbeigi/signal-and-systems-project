[audio, f] = audioread('Pulse.wav');
player = audioplayer(audio, f);
% play(player);

low_filtered = filter(low, 1, audio);
audiowrite('Pulse_lowpass.wav', low_filtered, f);
high_filtered = filter(high, 1, audio);
audiowrite('Pulse_highpass.wav', high_filtered, f);

subplot(3,1,1);
spectrogram(audio, f);
title('Pulse signal');

subplot(3,1,2);
spectrogram(low_filtered, f);
title('low pass filtered Pulse signal');

subplot(3,1,3);
spectrogram(high_filtered, f);
title('high pass filtered Pulse signal');
