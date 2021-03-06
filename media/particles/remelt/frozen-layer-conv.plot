#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
#set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone
set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone header '\input{header.tex}'
#set terminal epslatex size 7.5cm,4.63cm color colortext 10 #standalone

set yrange [40:400]
set xrange [0:0.14]

set ytics (40, 80, 120, 160, 200, 240, 280, 320, 360, 400)

set xlabel 'Temps t [\si{\second}]'
set ylabel "Rayon du volume gel\\'e [\\si{\\micro\\meter}]"

set output 'frozen-layer-sur10.tex'

set title "Surchauffe du bain $T - T_\\text{Liq} = 10$\\si{\\kelvin}"
plot 'frozen-layer-conv/cryolite-particle-remelt-sur960-r0.04-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur960-r0.06-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur960-r0.08-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 80$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur960-r0.04-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur960-r0.06-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur960-r0.08-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 80$\si{\micro\meter}'


set output 'frozen-layer-sur5.tex'

set title "Surchauffe du bain $T - T_\\text{Liq} = 5$\\si{\\kelvin}"
plot 'frozen-layer-conv/cryolite-particle-remelt-sur955-r0.04-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur955-r0.06-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur955-r0.08-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 80$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur955-r0.04-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur955-r0.06-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur955-r0.08-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 80$\si{\micro\meter}'


set output 'frozen-layer-sur2-5.tex'

set title "Surchauffe du bain $T - T_\\text{Liq} = 2.5$\\si{\\kelvin}"
plot 'frozen-layer-conv/cryolite-particle-remelt-sur952.5-r0.04-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur952.5-r0.06-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur952.5-r0.08-ts4000-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 80$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur952.5-r0.04-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur952.5-r0.06-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer-conv/cryolite-particle-remelt-sur952.5-r0.08-ts8000-transitions.dat' u 1:(1e3 * $2) w l dt 2 lw 3 title '$r_0 = 80$\si{\micro\meter}'
