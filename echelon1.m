t = -5:0.1:5;
u = zeros(size(t));
u(t >= 1) = 1;
figure(4);
plot(t, u, 'LineWidth', 2);
title('Échelon unitaire retardé u(t-1)');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;