t = -5:0.1:5;
delta = zeros(size(t));
delta(t == 2) = 1;
figure(2);
stem(t, delta, 'LineWidth', 2);
title('Impulsion de Dirac retardée \delta(t-2)');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;