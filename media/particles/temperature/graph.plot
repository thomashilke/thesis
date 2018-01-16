# \textwidth = 426.79pt = 15cm
set terminal epslatex size 9cm,4.7cm color colortext 10 #standalone
set output 'temperature.tex'

set xlabel '$r$'
set ylabel '$T_\text{init}(r)$'

set xrange [0:600]
set yrange [200:1350]

set xtics ("0" 0, "$R_p$" 150)
set ytics ('$T_\text{inj}$' 350, "$T_\\text{Liq}$" 1100, "$T_\\text{e}$" 1228)

set key bottom right

plot 'tinit.dat' w l title '$T_\text{init}(r)$', \
     'threshold.dat' w l title '$T_\text{Liq}$'