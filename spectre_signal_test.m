spx = abs(fft(x))/length(x);
fr = linspace(0, fe, length(x));

figure;
subplot(2,1,1);
plot(t, x, 'LineWidth', 1.5);
grid on;
axis([0 5/f1 -2 2]);
xlabel('Temps (s)');
title('Signal test x(t)');

subplot(2,1,2);
plot(fr, spx, 'LineWidth', 1.5);
grid on;
xlim([0 1000]);
xlabel('Fréquence (Hz)');
title('Spectre du signal test x(t)');
