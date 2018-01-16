function b = beta(h)
  t_liq = 1218;
  rho_e = 1;
  c_p = 1;
  delta_h_sl = 2;

  p_1x = t_liq * rho_e * c_p
  p_2x = t_liq * rho_e * c_p + delta_h_sl
  
  b =   (h < p_1x)                   .* (1/rho_e * 1/c_p * h) ...
	+ (h >= p_1x) .* (h <= p_2x) .* (t_liq) ...
        + (h > p_2x)                 .* (t_liq + 1/rho_e * 1/c_p * (h - p_2x));
  ;
end
