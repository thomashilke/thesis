# \textwidth = 426.79pt = 15cm
set terminal epslatex size 7cm,4.7cm color colortext 10 #standalone
set output 'enthalpy.tex'

set xlabel '$\Theta$'
set ylabel '$H(\Theta)$'

set xrange [:]
set yrange [:]

set xtics (1217, 1218, 1219)
unset ytics

set key top left

plot 'enthalpy.dat' w l title '$H(\Theta)$'