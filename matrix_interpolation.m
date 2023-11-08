close all, clear all, clc

x_n = (rand(1, 3)-0.5)*10;
y_n = (rand(1, 3)-0.5)*10;

X = [x_n(1).^3, x_n(1).^2, x_n(1), 1;
    x_n(2).^3, x_n(2).^2, x_n(2), 1;
    x_n(3).^3, x_n(3).^2, x_n(3), 1;
    3.*x_n(2).^2, 2.*x_n(2), 1, 0];

y = [y_n(1); y_n(2); y_n(3); 0]; 

a = inv(X) * y;

figure(1), hold on; grid on;

x = min(x_n):0.01:max(x_n);
plot(x_n, y_n, 'ro-.');
plot(x, polyval(a, x), 'b-');