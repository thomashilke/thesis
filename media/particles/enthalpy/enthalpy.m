function h = enthalpy(t)
  rho = 1;
  c_p = 1;
  delta_h_sl = 2;

  h = rho * c_p * t + delta_h_sl * (1 - fs(t));

  function s = fs(t)
    t_liq = 1218;
    s = t < t_liq;
  end
end


