t = -10:0.0001:10; 
f = 100;
x = sin(2*pi*f*t);

figure;
plot(t, x, 'LineWidth', 1);
title('Signal sinusoïdal 100 Hz');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;

figure;
plot(t, x, 'LineWidth', 1);
title('Signal sinusoïdal 100 Hz (zoom sur 2 périodes)');
xlabel('Temps (s)');
ylabel('Amplitude');
axis([0 2/f -1.1 1.1]);
grid on;
