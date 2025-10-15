filename1 = '';
filename2 = '';
filename3 = '';
data1 = readmatrix(filename1);
data2 = readmatrix(filename2);
data3= readmatrix(filename3);

wavenumbers1 = data1(:, 1);
absorbance1 = data1(:, 2);

wavenumbers2 = data2(:, 1);
absorbance2 = data2(:, 2);

wavenumbers3 = data3(:, 1);
absorbance3 = data3(:, 2);

transmittance1 = 10.^(-absorbance1) * 100;
transmittance2 = 10.^(-absorbance2) * 100;
transmittance3 = 10.^(-absorbance3) * 100;

figure;
plot(wavenumbers1, transmittance1, "LineWidth", 1.5);
hold on;
plot(wavenumbers2, transmittance2, 'LineWidth', 1.5);
plot(wavenumbers3, transmittance3, 'LineWidth', 1.5);

legend('CMC', 'Lignin', 'CL');
xlabel("Wavenumber (cm^{-1})");
ylabel('Transmittance (%)');
title("IR Comparison");
set(gca, "XDir", "reverse");
grid off;