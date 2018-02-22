# \textwidth = 426.79pt = 15cm
#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone
#set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone
#set terminal epslatex size 7.5cm,4.63cm color colortext 10 #standalone


set output 'variance-control.tex'

set xlabel 'Time $t$ [\si\second]'
set ylabel '$\mathrm{Var}(c)$ [\si{\mol\per\cubic\meter}]'

set xrange [:]
set yrange [:]

unset key

plot 'data-control.dat' using 1:10 w l