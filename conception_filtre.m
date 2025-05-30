[b, a] = butter(n, wn, 's');
[h, w] = freqs(b, a, 1000);
hh = abs(h);
hh_db = 20*log10(hh);
aa = abs(1 ./ h);
aa_db = 20*log10(aa);
f = w/(2*pi);

figure;
subplot(2,1,1);
plot(f, hh_db, 'LineWidth', 2);
grid on;
title('Module de la fonction de transfert du filtre Butterworth en dB');
xlabel('Fréquence (Hz)');
ylabel('Amplitude (dB)');
ylim([-80 5]);

subplot(2,1,2);
plot(f, aa_db, 'LineWidth', 2);
grid on;
title('Atténuation du filtre Butterworth en dB');
xlabel('Fréquence (Hz)');
ylabel('Atténuation (dB)');
xlim([0 500]);
ylim([0 60]);
