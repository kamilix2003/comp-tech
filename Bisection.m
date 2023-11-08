x = -4:0.1:4;
y_roots = [-2, 0, 0.5, 2.1];
a = poly(y_roots);
y = polyval(a, x);
f(x) = @a*[];
plot(x, y); grid on;
x_a = -4;
x_b = 4;
for k = 1:10
    x_1 = x_b - (f(x_b)*(x_b-x_a)/(f(x_b)-f(x_a)));
    if f(x_1)*f(x_a) < 0
        x_b = x_1;
    else
        x_a = x_1;
    end
    x_a, x_b
end