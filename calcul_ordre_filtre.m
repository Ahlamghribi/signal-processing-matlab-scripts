fa = 200; 
fc = 350; 
wa = 2*pi*fa;  
wc = 2*pi*fc; 
ra = 2; 
rc = 40;  

[n, wn] = buttord(wc, wa, ra, rc, 's'); 
disp(['Ordre du filtre nécessaire : ', num2str(n)]);
disp(['Fréquence de coupure normalisée : ', num2str(wn/(2*pi)), ' Hz']);
