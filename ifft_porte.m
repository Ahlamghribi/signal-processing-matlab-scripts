q_recon = ifft(sp_q * length(q));

figure;
plot(t, real(q_recon), 'LineWidth', 2); 
grid on;
axis([-10 10 0 1.5]);
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal q(t) reconstruit par transformée inverse');
