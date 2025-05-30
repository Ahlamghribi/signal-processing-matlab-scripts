t = -5:0.1:5;
delta = zeros(size(t));
delta(t == 0) = 1;
figure(1);
stem(t, delta, 'LineWidth', 2);
title('Impulsion de Dirac');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;