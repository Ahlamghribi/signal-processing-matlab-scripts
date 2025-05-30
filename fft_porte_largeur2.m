sp_p = abs(fft(p));
sp_p = sp_p / length(p);
fr = linspace(0, Fe, length(p));

figure;
subplot(2,1,1);
plot(t, p, 'LineWidth', 2);
grid on;
axis([-10 10 0 1.5]);
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal porte p(t)');

subplot(2,1,2);
plot(fr, sp_p, 'LineWidth', 1.5);
grid on;
xlim([0 5]);
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
title('Spectre du signal p(t)');
