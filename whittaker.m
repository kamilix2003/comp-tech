close all, clear all, clc,
dx = 1;
x = -5:dx:5;
y = (rand(1, length(x)) - 0.5)*10;
figure(1); hold on; grid on;
subplot(3, 1, 1), hold on; grid on;
plot(x, y);
dz = 0.01;
z = -5:dz:5;
f = zeros(1, length(z));
for k = 1:length(x)
    f = f + sinc((z - x(k))/dx) * y(k)
    subplot(3, 1, 2); hold on; grid on;
    plot(z, f);
end
subplot(3, 1, 3); hold on; grid on;
plot(z, f);
