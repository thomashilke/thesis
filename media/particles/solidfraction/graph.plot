# \textwidth = 426.79pt = 15cm
set terminal epslatex size 7cm,4.7cm color colortext 10 #standalone
set output 'solidfraction.tex'

set xlabel '$\Theta$'
set ylabel '$f_s(\Theta)$'

set xrange [:]
set yrange [-0.5:1.5]

set xtics (1217, 1218, 1219)
set ytics (0, 1)

set key top left

plot 'solid-fraction.dat' w l title '$f_s(\Theta)$'