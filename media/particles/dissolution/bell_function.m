function y = bell_function(x, x_0, w)
  y = zeros(size(x));
  is = find(abs(x - x_0) < w);
  y(is) = exp(1.0 - 1.0 ./ (1.0 - (x(is) - x_0 ).^2 / (w * w)));
end
