set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone header '\input{header.tex}'
set output 'neumann-convergence-h.tex'

set xlabel '$\delta$'
set ylabel '$\norm{\beta(\enthalpydensity_\delta^N) - \temperature(T, \cdot)}_{L^2}$'

set logscale xy
set auto fix
set offsets graph 0.3,0.6,0.7,0.4

set key spacing 2.0

plot 'neumann-convergence/neumann.dat' u (1./$1):2 w lp lw 3 title '$\norm{\beta(\enthalpydensity_\delta^N) - \temperature(T, \cdot)}_{L^2}$', \
    '' u (1./$1):(2.0 * ((100.)/(100.**(4./3.))/$1)**(3./4.)) w l lw 3 title 'Pente 3/4'
#     '' u (1./$1):(0.1 * 1.0 * (1./$1)) w l lw 3 title 'Slope 1', \
#     '' u (1./$1):(1.0 * 0.1 * (1./$1)**(1./2.)) w l lw 3 title 'Slope 1/2', \
 