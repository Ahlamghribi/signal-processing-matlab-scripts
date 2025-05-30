Fe = 1000;
t = -10:1/Fe:10;
p = zeros(size(t));
p(t >= -1 & t <= 1) = 1;

figure;
plot(t, p, 'LineWidth', 2);
grid on;
axis([-10 10 0 1.5]);
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal impulsion carrée de largeur 2');
