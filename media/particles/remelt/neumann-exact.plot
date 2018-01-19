#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
#set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone
set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone header '\input{header.tex}'
#set terminal epslatex size 7.5cm,4.63cm color colortext 10 #standalone

set yrange [-1.2:0.2]
set xrange [0:1]

set ytics (-1.0, -0.8, -0.6, -0.4,-0.2, 0.0)

set xlabel "Coordonn\\'ee $x$"
set ylabel "Temp\\'erature $\\Theta$"

set output 'neumann-exact.tex'

unset key
plot 'stephan-exact-neumann-solution-ts100-ss100-neumann-exact-solution.dat'\
     u 1:2 w l lw 3