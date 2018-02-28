g = 9.81;
rho_e = 2140;
rho_w = 1000;
rho_al = 3960;
mu_w = 1.002e-3;
mu_e = 2.000e-3;


r = 100e-6; % particle radius


%% sedimentation velocity and reynolds number of a particle in water
velocity = 2/9 * (rho_w - rho_al) * g / mu_w * r * r
reynolds = rho_w * abs(velocity) * 2 * r / mu_w


%% sedimentation velocity and reynolds number of a particle in an electrolytic bath
velocity = 2/9 * (rho_e - rho_al) * g / mu_e * r * r
reynolds = rho_e * abs(velocity) * 2 * r / mu_e



%% condition de validite pour la loi de stokes
rmax = (9 * mu_e^2 / (4 * rho_e * (rho_al - rho_e) * g))^(1./3.)

%% Check, on doit obtenir reynolds = 1
r = rmax; % particle radius
velocity = 2/9 * (rho_e - rho_al) * g / mu_e * r * r;
reynolds = rho_e * abs(velocity) * 2 * r / mu_e
