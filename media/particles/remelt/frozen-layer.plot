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
plot 'frozen-layer/cryolite-particle-remelt-sur10.0-r40-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer/cryolite-particle-remelt-sur10.0-r60-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer/cryolite-particle-remelt-sur10.0-r80-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 80$\si{\micro\meter}'


set output 'frozen-layer-sur5.tex'

set title "Surchauffe du bain $T - T_\\text{Liq} = 5$\\si{\\kelvin}"
plot 'frozen-layer/cryolite-particle-remelt-sur5.0-r40-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer/cryolite-particle-remelt-sur5.0-r60-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer/cryolite-particle-remelt-sur5.0-r80-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 80$\si{\micro\meter}'


set output 'frozen-layer-sur2-5.tex'

set title "Surchauffe du bain $T - T_\\text{Liq} = 2.5$\\si{\\kelvin}"
plot 'frozen-layer/cryolite-particle-remelt-sur2.5-r40-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 40$\si{\micro\meter}', \
     'frozen-layer/cryolite-particle-remelt-sur2.5-r60-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 60$\si{\micro\meter}', \
     'frozen-layer/cryolite-particle-remelt-sur2.5-r80-transitions.dat' u 1:(1e3 * $2) w l lw 3 title '$r_0 = 80$\si{\micro\meter}'
