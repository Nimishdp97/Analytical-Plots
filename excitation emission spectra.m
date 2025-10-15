filename1 = '';
filename2 = '';
filename3 = '';

data1 = readmatrix(filename1);
data2 = readmatrix(filename2);
data3 = readmatrix(filename3);

wavelength1 = data1(:,1);
intensity1 = data1(:,2);

wavelength2 = data2(:,1);
intensity2 = data2(:,2);

wavelength3 = data3(:,1);
intensity3 = data3(:,2);

figure;
plot(wavelength1, intensity1, 'b-', 'LineWidth', 1.5);
hold on;
plot(wavelength2, intensity2, 'g-', 'LineWidth', 1.5);
plot(wavelength3, intensity3, 'r-', 'LineWidth', 1.5);

xlabel('Wavelength (nm)');
ylabel('Intensity');
title('Fluorescence Spectra');
legend('BLANK', 'CL(20mg, 30mM)', 'CL(20mg, 35mM)');
grid on;
xlim([min([wavenlength1, wavelength2, wavelength3]), max([wavelength1, wavelength2, wavelength3])]);

set(gca, 'YScale', 'log');