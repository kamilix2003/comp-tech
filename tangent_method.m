close all, clear all, clc,

f = @(x) x.^3 - 1;
df = @(x) 3*x.^2;
x_a = -10;
x_b = 10;
figure(1); hold on; grid on;
x = -2:0.1:5;
plot(x, f(x));
iterations = 0;

x_l = x_a - (f(x_a)/df(x_a));

while abs(f(x_l)) > 0.01
    x_l = x_a - (f(x_a)/df(x_a));
    x_a = x_l;
    plot(x_a, 0, 'r.')
end

x_l
f(x_l)