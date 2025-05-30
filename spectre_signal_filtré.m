spy = abs(fft(s))/length(s);

subplot(2,1,2);
plot(fr, spy, 'LineWidth', 1.5);
grid on;
xlim([0 1000]);
xlabel('Fréquence (Hz)');
title('Spectre du signal filtré');
