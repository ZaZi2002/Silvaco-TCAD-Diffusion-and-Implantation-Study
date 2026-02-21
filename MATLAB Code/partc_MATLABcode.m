data = readmatrix('results_sweep_f.dat','NumHeaderLines',1);

time = data(:,1);
Ns = data(:,2);
Rs = data(:,3);
Xj = data(:,4);

figure;
subplot(3,1,1);
plot(time, Xj,'LineWidth',2,Color='red');
title("Junction Depth");
xlabel('Time (min)');
ylabel('Xj (um)');
%xlim([0,50000]);
grid on

subplot(3,1,2);
plot(time, Rs,'LineWidth',2,Color='green');
title("Sheet Resistance");
xlabel('Time (min)');
ylabel('Rs (Ohm/sq)');
%xlim([0,50000]);
grid on

subplot(3,1,3);
plot(time, Ns,'LineWidth',2,Color='blue');
title("Surface Concentration");
xlabel('Time (min)');
ylabel('Ns (cm^{-3})');
%xlim([0,50000]);
grid on
