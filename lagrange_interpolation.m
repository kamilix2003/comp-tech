close all, clear all, clc,
x = rand(1, 10) * 10 - 5;
y = rand(1, 10) * 10 - 5;
L = abs(max(x)) + abs(min(x));
figure(1); hold on; grid on;

plot(x, y, 'r.');
f = 0;
for k = 1:length(x)
    temp_a = poly
    f = f + y(k) * (polyval(poly(x),L)/polyval(poly(temp_a), x(k)))
end

