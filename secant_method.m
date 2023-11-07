close all, clear all, clc,

f = @(x) x.^3 - 1;
x_a = -10;
x_b = 10;
figure(1); hold on; grid on;
x = -2:0.1:5;
plot(x, f(x));
iterations = 0;

x_l = x_b - (f(x_b) * (x_b - x_a) / (f(x_b) - f(x_a)));

while abs(f(x_l)) > 0.01
    iterations = 1 + iterations;
    x_l = x_b - (f(x_b) * (x_b - x_a) / (f(x_b) - f(x_a)));
    if f(x_a) * f(x_l) < 0
        x_b = x_l;
    elseif f(x_b) * f(x_l) < 0
        x_a = x_l;
    end
    % plot([x_a, x_b], [f(x_a), f(x_b)], "r.")
    plot(x_l, 0, 'r.')
end
iterations
x_l
f(x_l)
