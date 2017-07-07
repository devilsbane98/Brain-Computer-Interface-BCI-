[p,f] = pmusic_1(filtA{2}(:,6),4); % Window length = 7
plot(f,20*log10(abs(p)))
xlabel 'Frequency (Hz)', ylabel 'Power (dB)'
title 'Pseudospectrum Estimate via MUSIC', grid on