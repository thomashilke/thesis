# \textwidth = 426.79pt = 15cm
#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone
#set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone
#set terminal epslatex size 7.5cm,4.63cm color colortext 10 #standalone


set output 'sf-convergence.tex'

set xlabel '$\thickness$'
set ylabel 'Erreur $e_{h,K}^{\mathrm{SF}}$, $e_h^{\mathrm{S3D}}$'

set xrange [:]
set yrange [:]

set logscale xy

set key top right
set key spacing 1.5

set style circle radius screen 0.01 

plot 'sf-convergence.dat' u 1:2 ls 1 w l title '$e_{h,K}^{\mathrm{SF}}$', \
     'sf-convergence.dat' u 1:2 ls 1 w circles notitle, \
     '' u 1:3 ls 2 w l title '$e_h^{\mathrm{S3D}}$', \
     '' u 1:3 ls 2 w circles notitle 