filename = '';
data = readmatrix(filename);

frequency = data(:,7);
G_prime = data(:,11);
G_double_prime = data(:,12);
phase_angle = data(:,14);

figure;

yyaxis left
plot(frequency, G_prime, '-o', 'DisplayName', "G' (Elastic)");
hold on;
plot(frequency, G_double_prime, '-s', 'DisplayName', "G'' (Viscous)");
ylabel("G'(Pa), G''(Pa)");
set(gca, 'Yscale', 'log');
ylim([10^3 10^6]);


set(gca, 'Xscale', 'log');
xlabel('Frequency (Hz)');


yyaxis right
plot(frequency, phase_angle, '-^', 'DisplayName', 'Phase Angle');
ylabel('Phase Angle (°)');
ylim([2 14]);

title('Shear Modulus and Phase Angle vs Frequency');
legend('Location', 'best');
grid on;
