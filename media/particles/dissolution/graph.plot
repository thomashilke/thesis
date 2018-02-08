# \textwidth = 426.79pt = 15cm, (height = 9.37cm)
# 15 x 9.37
# 11.25 x 6.95
# 10 x 6.18
# 7.5 x 4.63

#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
set terminal epslatex size 11.25cm,6.05cm color colortext 10 #standalone
#set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone
#set terminal epslatex size 7.5cm,4.63cm color colortext 10 #standalone

set output 'dissolution-convergence.tex'

set xlabel '$\Delta r$ [\si{\meter}]'
set ylabel '$\norm{n_{p,\Delta r}^N - n_p(T, .)}_{L^2(0,\rmax)}$'

set xtics format '%3.0e'
set ytics format '%3.0e'

set logscale
set auto fix
set offsets graph 0.1,0.3,0.3,0.3

set key bottom right
set key spacing 1.5
#unset key

plot \
'slope.dat' u 1:2 w l title 'Pente 1',\
'error.dat' u 1:2 w lp title '$\norm{n_{p,\Delta r}^N - n_p(T, .)}_{L^2(0, \rmax)}$'