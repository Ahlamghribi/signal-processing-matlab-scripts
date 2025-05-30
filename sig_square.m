f = 100;
t = 0:0.0001:2/f; % deux périodes
x = square(2*pi*f*t);

figure;
plot(t, x, 'LineWidth', 2);
title('Signal carré 100 Hz (2 périodes)');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
ylim([-1.1 1.1]);
