Fe = 1000;           
t = -10:1/Fe:10;         
q = zeros(size(t));       

q(t >= -0.5 & t <= 0.5) = 1;

sp_q = abs(fft(q));
sp_q = sp_q / length(q);

fr = linspace(0, Fe, length(q)); 

figure;
subplot(2,1,1);
plot(t, q, 'LineWidth', 2);
grid on;
axis([-10 10 0 1.5]);
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal porte q(t) largeur 1');

subplot(2,1,2);
plot(fr, sp_q, 'LineWidth', 1.5);
grid on;
xlim([0 10]);
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
title('Spectre du signal q(t)');
