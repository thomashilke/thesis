function nps = exact_dissolution(r, np, t_end, nu)
  r_hat = characteristic(r, -t_end, nu);
  nps = r./r_hat .* interp1(r, np, r_hat, 0.0);
end

function r_end = characteristic(r_start, delta_t, nu)
  r_end = sqrt(r_start.^2 - 2 * nu * delta_t);
end
