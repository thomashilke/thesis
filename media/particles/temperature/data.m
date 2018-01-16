r_low = 0;
r_high = 600;
n = 200;

%t_liq = 1218;
t_liq = 1100; % for the purpose of illustration

t = linspace(r_low, r_high, n)';
r = [t, tinit(t)];

t_liq_threshold = [r_low, t_liq; r_high, t_liq];

save('-ascii', 'tinit.dat', 'r');
save('-ascii', 'threshold.dat', 't_liq_threshold');

