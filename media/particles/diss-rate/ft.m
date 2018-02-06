function r = ft(t)
  t_liq = 1219;
  t_crit = t_liq + 0.86;
  
  r = (t < t_liq) .* zeros(size(t)) + (t > t_liq) .* (1 - exp(-(t - t_liq)/(t_crit - t_liq)));
end
