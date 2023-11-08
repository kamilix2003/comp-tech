function [y] = cos_derivative(n_order, period, x)
    if mod(n_order, 2) == 0
        y = (-1)^(n_order/2) .* (2*pi/period)^n_order .* cos(2*pi/period*x);
    else
        y = (-1)^((n_order+1)/2) .* (2*pi/period)^n_order .* sin(2*pi/period*x);
    end
end