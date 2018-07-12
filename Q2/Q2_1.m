[signal, fs] = audioread('Pulse.wav');
player = audioplayer(signal, fs);
play(player);

low_filtered = filter(low, 1, signal);
high_filtered = filter(high, 1, signal);

subplot(3,1,1);
spectrogram(signal, fs);


subplot(3,1,2);
spectrogram(low_filtered, fs);


subplot(3,1,3);
spectrogram(high_filtered, fs);

