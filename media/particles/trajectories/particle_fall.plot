# \textwidth = 426.79pt = 15cm
set terminal epslatex size 7.45cm,9.4cm color colortext 10 #standalone header "\\input{header.tex}"
set output 'particle_fall.tex'

set macro
LS = " w l"

set key at graph -0.05,0.01 bottom left
set xlabel 'Temps $t$ [\si{\second}]'
set ylabel 'Position $x$ [\si{\meter}]'

set format y '\num{%3.3f}'

plot 'particle_fall_1.dat' u 1:2 @LS title '$r_0 = 40\si{\micro\meter}$', \
     'particle_fall_2.dat' u 1:2 @LS title '$r_0 = 60\si{\micro\meter}$', \
     'particle_fall_3.dat' u 1:2 @LS title '$r_0 = 80\si{\micro\meter}$'


set output 'particle_fall_zoom.tex'

set xlabel 'Temps $t$ [\si{\milli\second}]'
set ylabel 'Position $x$ [\si{\micro\meter}]'

set key at graph -0.05,0.01 bottom left
set xrange [0:10]
set xtics (0.0, 2.5, 5, 7.5, 10)
set format y '\num{%3.1f}'
set yrange [-150:0]
set ytics (0, -50, -100, -150)
plot 'particle_fall_1.dat' u ($1 * 1000):($2 * 1e6) @LS title '$r_0 = 40\si{\micro\meter}$', \
     'particle_fall_2.dat' u ($1 * 1000):($2 * 1e6) @LS title '$r_0 = 60\si{\micro\meter}$', \
     'particle_fall_3.dat' u ($1 * 1000):($2 * 1e6) @LS title '$r_0 = 80\si{\micro\meter}$'


reset
set terminal epslatex size 10cm,6.18cm color colortext 10
set output 'radius_evolution.tex'

unset key
set xlabel 'Temps t [\si{\second}]'
set ylabel 'Rayon r(t) [\si{\micro\meter}]'
set xrange [0:12]
set yrange [0:240]
plot 'radius_evolution.dat' u 1:($2*1000000) @LS
