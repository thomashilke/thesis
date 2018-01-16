# \textwidth = 426.79pt = 15cm
set terminal epslatex size 9cm,4.7cm color colortext 10 #standalone
set output 'beta.tex'

set xlabel '$H$'
set ylabel '$\beta(H)$'

unset xtics
set ytics (1216, 1217, 1218, 1219, 1220)

set xrange [1216:1222]
set yrange [:]

set key bottom right

plot 'beta.dat' w l title '$\beta(H)$'