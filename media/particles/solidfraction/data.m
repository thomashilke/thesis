t_low = 1216;
t_high = 1220;
n = 200;

t = linspace(t_low, t_high, n)';
s = [t, fs(t)];

save('-ascii', 'solid-fraction.dat', 's');

