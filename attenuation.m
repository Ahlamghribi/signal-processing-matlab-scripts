idx_f1 = round(f1*length(t)/fe) + 1;
idx_f2 = round(f2*length(t)/fe) + 1;
att_f1 = 20*log10(spy(idx_f1)/spx(idx_f1));
att_f2 = 20*log10(spy(idx_f2)/spx(idx_f2));

disp(['Atténuation à ', num2str(f1), ' Hz : ', num2str(att_f1), ' dB']);
disp(['Atténuation à ', num2str(f2), ' Hz : ', num2str(att_f2), ' dB']);
