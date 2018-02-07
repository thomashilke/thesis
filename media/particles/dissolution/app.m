more off;
graphics_toolkit('gnuplot');

r_max = 100e-6;
nu = 0.5e-9;
%np_init = @(r) 1.0 * ones(size(r));
np_init = @(r) bell_function(r, r_max / 2, r_max / 4);

t_end = 5.0;
snapshots = linspace(0, t_end, 11);

delta_rs = [];
errors = [];

for i = 0:7
  %% Setup specific parameters (timestep and N_r)
  fact = 2^i;
  ts = 0.029297 / fact;
  n_r = 32 * fact;


  %% Initial conditions and solve the problem
  r = linspace(r_max / n_r, r_max, n_r);
  np = np_init(r);
  [nps, ts] = dissolution(r, np, t_end, snapshots, nu, ts);

 %%figure();
 %%hold on;
 %%for i = 1:10
 %%  plot(r, nps(:, i * 10 - 1), '+-r');
 %%  plot(r, exact_dissolution(r, np, snapshots(i * 10 - 1), nu), '-g')
 %%end


  %% Evaluate the error on the solution
  np_approx = nps(:, end);
  np_exact = exact_dissolution(r, np, t_end, nu)';
  np_diff = np_approx - np_exact;

  %% Compute the L^2 norm of the error
  delta_r = min(diff(r));
  error = 0.0;
  for i = 1:length(np_approx) - 1
    error = error + delta_r / 2.0 * (np_diff(i)^2 + np_diff(i + 1)^2);
  end
  error = sqrt(error);

  %% Save the results
  errors(end + 1) = error;
  delta_rs(end + 1) = delta_r;
end


%% Generate the data for the slope
l = logspace(log(min(delta_rs))/log(10),log(max(delta_rs))/log(10),  2);
ll = l / min(l) * min(errors) * 2;

%figure();
%hold on;
%loglog(delta_rs, errors, '+-r');
%loglog(l, ll, '-g');

data = [delta_rs', errors'];
slope = [l', ll'];

save error.dat data
save slope.dat slope


%% Prepare some snapshots to build a solution timelapse
fact = 2^1;
n_r = 32 * fact;
ts = 0.029297 / fact;

r = linspace(r_max / n_r, r_max, n_r);
np = np_init(r);

[nps, ts] = dissolution(r, np, t_end, snapshots, nu, ts);
sn_exact = zeros(length(r), 11);
for sn = 1:11
  sn_exact(:, sn) = exact_dissolution(r, np, ts(sn), nu);
end
  
sn_approx = [r', nps, sn_exact];

save timelapse.dat sn_approx
