t = -10:0.01:10;
x = sinc(t);

figure;
plot(t, x, 'LineWidth', 2);
title('Signal sinus cardinal sinc(t)');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
