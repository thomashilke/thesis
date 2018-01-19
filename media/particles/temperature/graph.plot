# \textwidth = 426.79pt = 15cm
set terminal epslatex size 9cm,4.7cm color colortext 10 #standalone
set output 'temperature.tex'

set xlabel '$r$'
set ylabel '$\tinit(r)$'

set xrange [0:600]
set yrange [200:1350]

set xtics ("0" 0, "$R_p$" 150)
set ytics ('$\tinj$' 350, '$\telectrolyte$' 1228)
set y2tics ('$\tliq$' 1100)

set key bottom right

set style line 2 lt 4 lw 1 dt ' -' linecolor rgb "#009e73"

plot 'tinit.dat' w l title '$\tinit(r)$', \
     'threshold.dat' w l ls 2 notitle