function [nps, ts] = dissolution(r, np, t_end, snapshots, nu, delta_t)
  nps = zeros(length(np), length(snapshots));
  ts = zeros(size(snapshots));
  
  %% The timestep is initialized such that:
  %% R_{r_i}(-\Delta_t) \leq r_{i + 1}, i = 0,1,... ,N_r
  delta_r = min(diff(r));
  %%delta_t = (2.0 * min(r) * delta_r  + delta_r^2) / (2.0 * nu);
  %% if delta_t < 1e-2
  %%   delta_t = 1e-2
  %% end
  printf('Timesteps: %f\n', delta_t);
  printf('Number of timesteps: %f\n', round(t_end / delta_t));

  sn = 1;
  t = delta_t;
  while t <= t_end
    %%printf('time t = %f\n', t);
    
    %% Step 1: compute the positions of the characteristics r_hat at
    %% time t - deltat:
    r_hat = characteristic(t, r, - delta_t, nu);

    %% Step 2: compute the factor R(t_{k+1}) / R(t_k):
    factor = r./r_hat;

    %% Step 3: interpolate the solution at time t - delta_t on r_hat:
    np_hat = interp1(r, np, r_hat, 0.0);

    %% Step 4: put everything together:
    np = factor .* np_hat;


    %% Save the snapshots
    if t >= snapshots(sn)
      nps(:, sn) = np;
      ts(sn) = t;
      sn = sn + 1;
    end
    
    %% Update the time. Update the delta_t to fall exactly
    %% on t_end if necessary.
    if t + delta_t > t_end && t ~= t_end
      delta_t = t_end - t;
      t = t_end;
    else
      t = t + delta_t;
    end
  end
end

%% Move along the characteristic R(t) defined by
%%
%%   R(0) = r_start
%%
%% for a timespan of delta_t.
%% The value of delta_t might be negative, in order to integrate
%% backward.
function r_end = characteristic(t, r_start, delta_t, nu)
  r_end = sqrt(r_start.^2 - 2*velocity(t, r_start, nu)*delta_t);
end


%% The velocity on the characteristics depends on time. More
%% precisely, the velocity is either 0 or nu, depending on the latency
%% for the radius r and the current time t.
function v = velocity(t, r, nu)
  %% nu is the constant in the expression of the velocity:
  %%
  %%   v(r) = - nu / r.
  v = nu * (t > latency(r));
end

function l = latency(r)
  %% Typically, r ranges from 0[m] to 100e-6[m]
  %% With alpha = 1.0 / 100e-6, the latency will range from 1 for the
  %% smallest particles to 2 for the largest.
  alpha = 1.0 / 100e-6;
  l = -alpha * r(1) + alpha * r;

  %% Let's disable the latency for now:
  l = 0.0;
end
