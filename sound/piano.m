% clear variables
clear

[y, fs] = audioread('Piano.ff.A4.aiff');

% stereo to mono (average both channels)
ym = mean(y, 2);

[p, f] = pspectrum(ym, fs, 'power');

[pks, locs] = findpeaks(pow2db(p), f, 'MinPeakHeight', -100, 'MinPeakDistance', 440);

overtones = music.freq2note(locs);

figure('Units', 'centimeters', 'Position', [0 0 15 20]);

subplot(2,1,1);
pspectrum(ym, fs, 'spectrogram', 'FrequencyLimits', [0 fs/4]);
title({'Piano - Nota A4'; 'Espectrograma'});
xlabel('Tempo decorrido (segundos)');
ylabel('Frequência (kHz)');

h = colorbar;
ylabel(h, 'Amplitude (dB)');

subplot(2,1,2);
pspectrum(ym, fs, 'power', 'FrequencyLimits', [0 fs/4]);
title({'Piano - Nota A4'; 'Resposta em frequência'});
xlabel('Frequência (kHz)');
ylabel('Amplitude (dB)');

text(locs/1000, pks, overtones, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom', 'FontName', 'Spectral', 'FontSize', 9);

print('piano', '-dsvg');
