h_low = 1216;
h_high = 1222;
n = 200;

h = linspace(h_low, h_high, n)';
b = [h, beta(h)];

save('-ascii', 'beta.dat', 'b');

