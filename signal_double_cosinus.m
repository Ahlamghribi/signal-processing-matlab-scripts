fe = 1000;
t = 0:1/fe:1;
x = cos(2*pi*50*t) + cos(2*pi*120*t);

sp_x = abs(fft(x))/length(x);
fr = linspace(0, fe, length(x));

figure;
subplot(2,1,1);
plot(t, x, 'LineWidth', 2);
grid on;
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal x(t) = cos(2\pi50t) + cos(2\pi120t)');

subplot(2,1,2);
plot(fr, sp_x, 'LineWidth', 2);
grid on;
xlim([0 200]);
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
title('Spectre de x(t)');
