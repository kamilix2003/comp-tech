close all, clear all, clc

x = -pi:0.01:pi;

figure(1)

T = 2*pi;
test_n = 1:10;
x_0 = 0;
r = @(x, n) cos_derivative(n, T, x)./gamma(n+1) .* (x - x_0).^(n+1);
max_error = 0.1;
x_range = zeros(1, length(test_n));
subplot(2, 1, 1); hold on; grid on;
for n = test_n
    plot(x, r(x, n));
    irange = find(abs(r(x,n)) < max_error);
    x_max = max(x(irange));
    x_min = min(x(irange));
    x_range(n) = abs(x_min) + abs(x_max);
end
subplot(2, 1, 2); hold on; grid on;
plot(test_n, x_range, 'r.-')