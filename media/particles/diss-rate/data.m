t_low = 1215;
t_high = 1228;
n = 200;

t = linspace(t_low, t_high, n)';
r = [t, ft(t)];

save('-ascii', 'diss-rate.dat', 'r');
