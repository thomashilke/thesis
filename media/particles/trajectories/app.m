more off;


p = struct('alumina_density', 3960, ...
           'electrolyte_density', 2130, ...
           'dynamic_viscosity', 2e-3);


r_max = 100e-6;
t_max = 10;
K = r_max^2/(2 * t_max);

g = 9.81;

V = @(r) 4/3 * pi * r.^3;
R = @(t, r_init) sqrt(r_init^2 - 2 * K * t);
t_end = @(r_init) r_init^2 /(2 * K);


%figure(); hold on;

n_r = 3;
rs = linspace(40e-6, 80e-6, n_r);

n_samples = 4000;
xs = zeros(n_samples, n_r);
ts = zeros(n_samples, n_r);

solutions = {}; % save the solutions for each radius in a cell array

for i = 1:n_r
  r_init = rs(i);

%% rho_al * 4/3 * r(t)^2 v'(t) = g*delta_rho * 4/3 * r(t)^2 - (6*mu - 4*rho_al*kappa) * v(t)
%% v(t) = x'(t),
%% v(0) = 0,
%% x(0) = 0.

%% v'(t) = g * delta_rho / rho_al - 3/4 * (6*mu - 4*rho_al*kappa)/(rho_al * r(t)^2) * v(t),
%% x'(t) = v

% u = (v,x)
% u'(t) = f(t, u),
% f(t, u) = (g * delta_rho / rho_al - 3/4 * (6*mu - 4*rho_al*kappa)/(rho_al * r(t)^2) * u(1), u(1)).

  
%%  rhs = @(t, y, p) [(p.electrolyte_density - p.alumina_density) / p.alumina_density ...
%%                    * g ...
%%                    + force(abs(y(1)), R(t, r_init), p)/(V(R(t, r_init)) * p.alumina_density), ...
%%                    y(1)];

  rhs = @(t, y, p) [(p.electrolyte_density - p.alumina_density) / p.alumina_density * g - 3./4. * (6 * p.dynamic_viscosity - 4*p.alumina_density*K)/(p.alumina_density * R(t, r_init)^2) * y(1), y(1)];

  ts(:, i) = linspace(0, 0.999 * t_end(r_init), n_samples);

  odeopt = odeset('AbsTol', 1e-6, ...
                  'RelTol', 1e-6, ...
                  'InitialStep', 1e-4);
  [t, y] = ode45(rhs, [ts(1, i), ts(end, i)], [0, 0], odeopt, p);

  solutions{end+1} = [t, y(:,2)];
  %xs(:, i) = y(:, 2);
  %plot(t, y(:, 2), '-');
end

for i = 1:length(solutions)
  data = solutions{i};
  save(['particle_fall_' num2str(i) '.dat'], 'data');
end


%% Diameter of a particule as a function of time:
t = linspace(0, t_max, 200)';
r = sqrt(r_max^2 - 2 * K * t);

data = [t, r];
save radius_evolution.dat data;


