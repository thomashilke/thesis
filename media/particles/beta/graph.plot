# \textwidth = 426.79pt = 15cm
set terminal epslatex size 9cm,4.7cm color colortext 10 #standalone
set output 'beta.tex'

set xlabel '$H$'
set ylabel '$\beta(H)$'

set xtics ('$H_1$' 1218, '$H_2$' 1220)
set ytics (1216, 1217, 1218, 1219, 1220)
set y2tics ('' 1217, '$\tliq$' 1218, '' 1219)

set xrange [1216:1222]
set yrange [:]

set key top left

set style line 2 lt 4 lw 1 dt ' -' linecolor rgb "#009e73"


plot 'beta.dat' w l title '$\beta(H)$', \
     '-' u 1:2 w l ls 2 notitle, '' u 1:2 w l ls 2 notitle, '' u 1:2 w l ls 2 notitle
 1218 1216
 1218 1218
e
 1220 1216
 1220 1218
e
 1220 1218
 1222 1218
EOF
