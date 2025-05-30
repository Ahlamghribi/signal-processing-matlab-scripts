t = -5:0.1:5;
u = zeros(size(t));
u(t >= 0) = 1;
figure(3);
plot(t, u, 'LineWidth', 2);
title('Échelon unitaire');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;