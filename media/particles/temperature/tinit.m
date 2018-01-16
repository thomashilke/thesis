function t = tinit(r)
  r_p = 150;
  t_e = 1228;
  t_inj = 350;
  
  t = (r < r_p) .* t_inj + (r >= r_p) .* t_e;
end
