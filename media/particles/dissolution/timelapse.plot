# \textwidth = 426.79pt = 15cm, (height = 9.37cm)
# 15 x 9.37
# 11.25 x 6.95
# 10 x 6.18
# 7.5 x 4.63

#set terminal epslatex size 15cm,9.37cm color colortext 10 #standalone
#set terminal epslatex size 11.25cm,6.95cm color colortext 10 #standalone
#set terminal epslatex size 10cm,6.18cm color colortext 10 #standalone

#set terminal epslatex size 7.5cm,4.63cm color colortext 10 #standalone
set terminal epslatex size 7.0cm,4.00cm color colortext 10 #standalone

set xtics format '%3.0f'
set xtics (0, 20, 40, 60, 80, 100)
set ytics format '%2.1f'

set yrange [-0.1:1.1]
set xrange [0:100]

#set offsets graph 0.1,0.3,0.3,0.3

set key top right
set key spacing 1.5
unset key


# TL 1
set output 'timelapse-1.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 0.0)$'

plot \
'timelapse.dat' u ($1*1000*1000):2 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):13 w l title '$n_{p}$'


# TL 2
set output 'timelapse-2.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 0.5)$'

plot \
'timelapse.dat' u ($1*1000*1000):3 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):14 w l title '$n_{p}$'


# TL 3
set output 'timelapse-3.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 1.0)$'

plot \
'timelapse.dat' u ($1*1000*1000):4 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):15 w l title '$n_{p}$'


# TL 4
set output 'timelapse-4.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 1.5)$'

plot \
'timelapse.dat' u ($1*1000*1000):5 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):16 w l title '$n_{p}$'


# TL 5
set output 'timelapse-5.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 2.0)$'

plot \
'timelapse.dat' u ($1*1000*1000):6 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):17 w l title '$n_{p}$'


# TL 6
set output 'timelapse-6.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 2.5)$'

plot \
'timelapse.dat' u ($1*1000*1000):7 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):18 w l title '$n_{p}$'


# TL 7
set output 'timelapse-7.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 3.0)$'

plot \
'timelapse.dat' u ($1*1000*1000):8 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):19 w l title '$n_{p}$'


# TL 8
set output 'timelapse-8.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 3.5)$'

plot \
'timelapse.dat' u ($1*1000*1000):9 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):20 w l title '$n_{p}$'


# TL 9
set output 'timelapse-9.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 4.0)$'

plot \
'timelapse.dat' u ($1*1000*1000):10 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):21 w l title '$n_{p}$'


# TL 10
set output 'timelapse-10.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 4.5)$'

plot \
'timelapse.dat' u ($1*1000*1000):11 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):22 w l title '$n_{p}$'

# TL 11
set output 'timelapse-11.tex'
set xlabel '$r$ [\si{\micro\meter}]'
set ylabel '$n_{p,h},\ {n_p}(t = 5.0)$'

plot \
'timelapse.dat' u ($1*1000*1000):11 w lp title '$n_{p,h}$',\
'timelapse.dat' u ($1*1000*1000):23 w l title '$n_{p}$'