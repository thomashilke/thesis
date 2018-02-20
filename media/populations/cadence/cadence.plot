

#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone
#set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone

set output 'cadence.tex'

set xlabel 'Temps $t$ [s]'
set ylabel 'Injecteur'

set xrange [0:200]
set yrange [0:5]
set xtics (32 ,   64  ,  96 ,  128,   160 ,  192)
set ytics ('\#1' 1, '\#2' 2, '\#3' 3, '\#4' 4)

unset key

plot 'inj1.dat' using 1:2:(1) w circle linewidth 2 lt rgb 'black', \
     'inj2.dat' using 1:2:(1) w circle linewidth 2 lt rgb 'black', \
     'inj3.dat' using 1:2:(1) w circle linewidth 2 lt rgb 'black', \
     'inj4.dat' using 1:2:(1) w circle linewidth 2 lt rgb 'black'