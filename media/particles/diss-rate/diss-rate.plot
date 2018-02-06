# \textwidth = 426.79pt = 15cm
set terminal epslatex size 9.5cm,4.7cm color colortext 10 #standalone
set output 'diss-rate.tex'

set xlabel 'Temp\''erature $\temperature$'
set ylabel '$\dissolutionrate(0, \temperature)$'

set xrange [1217.5:1223]
set yrange [-0.2:1.2]

set ytics (0,0.5,1)
#set xtics (1216,1220,1224,1228)
set xtics ('$\tliq$' 1219, '$\tcrit$' 1219.86)

set key right bottom

set style line 2 lt 4 lw 1 dt ' -' linecolor rgb "#009e73"

plot 'diss-rate.dat' w l notitle, \
     '-' w l ls 2 notitle, \
     '-' w l ls 2 notitle, \
     '-' w l ls 2 notitle, \
     '-' w l ls 2 notitle
1219 0
1219 -0.2
e
1219 0
1219.86 1.0
e
1217.5 1.0
1224 1.0
e
1219.86 1.0
1219.86 -0.2
EOF
     