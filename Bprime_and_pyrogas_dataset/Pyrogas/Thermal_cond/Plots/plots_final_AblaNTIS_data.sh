#!/bin/bash

gnuplot -persist << EOF

folder2="../Pyrogas_AblaNTIS/"

data0="p_1000.dat"
data1="p_10000.dat"
data2="p_100000.dat" 

point1=" u 1:2 lt 1 pt 1"
point2=" lt 2 pt 1"
point3=" lt 3 pt 1"
point4=" lt 4 pt 1"

line1=" lt 1 w l"
line2=" lt 2 w l"
line3=" lt 3 w l"
line4=" lt 4 w l"

m1=" old mix"
m2=" new mix"

t1= " 1.0e-03 Pa"
t2= " 1.0e-04 Pa"
t3= " 1.0e-05 Pa"

plot20=folder2.data0 
plot21=folder2.data1
plot22=folder2.data2 

################################
 set ylabel "Thermal conductivity, W/m-K"
 set xlabel "T, K"
################################
 
#set yrange [0:10]
#set yrange [0.001:100]
#set yrange [0.0:2]
#set yrange [0.001:2]

#set logscale y

set terminal qt 0  ; 
plot plot20 u 1:2 lt 1  w l  title t1.m2, \
     plot21 u 1:2 lt 2  w l  title t2.m2, \
     plot22 u 1:2 lt 3  w l  title t3.m2;
     pause mouse close

EOF

