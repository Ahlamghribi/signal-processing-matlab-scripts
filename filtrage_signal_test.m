Syst = tf(b, a);
s = lsim(Syst, x, t);

figure;
subplot(2,1,1);
plot(t, s, 'LineWidth', 1.5);
grid on;
axis([5/f1 10/f1 -2 2]);
xlabel('Temps (s)');
title('Signal filtré');
