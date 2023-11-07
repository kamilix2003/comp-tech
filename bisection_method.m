close all, clear all, clc,

f = @(x) x.^3 - 1;

x_a = -10;
x_b = 10;
x_0 = (x_a + x_b)/2;
iterations = 0;
figure(1); grid on; hold on;
while abs(f(x_0)) > 0.01
    iterations = 1 + iterations;
    x_0 = (x_a + x_b)/2;
    plot(x_0, 0, 'ro');
    if f(x_b) * f(x_0) > 0
        x_b = x_0;
    else
        x_a = x_0;
    end
end
iterations
x_0 = (x_a + x_b)/2
f(x_0)
x = -2:0.1:5;
plot(x, f(x));
