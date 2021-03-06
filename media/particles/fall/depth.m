function [x, xapp, v0eq, reynolds] = depth(r0, v0, mu, param)
  p = param;
  x =   p.g * (p.alumina_density - p.electrolyte_density) ./ ...
        (p.dissolution_rate * (  18.0 * mu  ...
                               - 4.0  * p.alumina_density * p.dissolution_rate)) ...
        .* r0.^4 ...
      + 4.0 * p.alumina_density * v0 ./ ...
        (  18.0 * mu ...
           - 4.0  * p.alumina_density * p.dissolution_rate) .* r0.^2;

  xapp = p.g * (p.alumina_density - p.electrolyte_density) ./ ...
        (p.dissolution_rate * 18.0 * mu) ...
        .* r0.^4 ...
      + 4.0 * p.alumina_density * v0 ./ ...
        (  18.0 * mu ) .* r0.^2;

  v0eq = p.g / (4.0 * p.dissolution_rate) * (p.alumina_density - p.electrolyte_density)/p.alumina_density * r0.^2;

  reynolds = 4/9 * p.g * p.electrolyte_density * (p.electrolyte_density - p.alumina_density) * r0.^3 ./ mu.^2;
end
