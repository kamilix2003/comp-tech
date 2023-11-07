close all, clear all, clc,

f = @(x) x.^3 - 1;
x_a = -10;
x_b = 10;
figure(1); hold on; grid on;
x = -2:0.1:5;
plot(x, f(x));
iterations = 0;