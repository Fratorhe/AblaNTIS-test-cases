#!/bin/bash

gnuplot -persist << EOF

folder2="../Tab_carbonPhenolInNitrogen_AblaNTIS/tab_carbonPhenolInNitrogen_AblaNTIS"


data0="_p_1.0e+05_Bpg_0.00000e+00.txt"
data1="_p_1.0e+05_Bpg_1.00000e-01.txt"
data2="_p_1.0e+05_Bpg_5.00000e-01.txt" 
data3="_p_1.0e+05_Bpg_1.00000e+00.txt"

data4="_p_1.0e+04_Bpg_0.00000e+00.txt" 
data5="_p_1.0e+04_Bpg_1.00000e-01.txt" 
data6="_p_1.0e+04_Bpg_5.00000e-01.txt" 
data7="_p_1.0e+04_Bpg_1.00000e+00.txt"

data8="_p_1.0e+03_Bpg_0.00000e+00.txt" 
data9="_p_1.0e+03_Bpg_1.00000e-01.txt" 
data10="_p_1.0e+03_Bpg_5.00000e-01.txt" 
data11="_p_1.0e+03_Bpg_1.00000e+00.txt"

line1=" lt 1 w l"
line2=" lt 2 w l"
line3=" lt 3 w l"
line4=" lt 4 w l"

m1=" old mix"
m2=" new mix"

t1="B'_g=0"
t2="B'_g=0.1"
t3="B'_g=0.5"
t4="B'_g=1"

plot20=folder2.data0 
plot21=folder2.data1
plot22=folder2.data2 
plot23=folder2.data3 
plot24=folder2.data4
plot25=folder2.data5
plot26=folder2.data6 
plot27=folder2.data7 
plot28=folder2.data8
plot29=folder2.data9
plot210=folder2.data10
plot211=folder2.data11

################################
 set ylabel "B'_c"
 set xlabel "T, K"
################################
 
#set yrange [0:10]
set yrange [0.00000001:100]
#set yrange [0.0:2]
#set yrange [0.001:2]

set logscale y

set terminal qt 0  ; 
set title "1000 hPa"
plot plot20 u 1:2 lt 1 w l  title t1.m2, \
     plot21 u 1:2 lt 2 w l  title t2.m2, \
     plot22 u 1:2 lt 3 w l  title t3.m2, \
     plot23 u 1:2 lt 4 w l  title t4.m2


set terminal qt 1 ; 
set title "100 hPa"
plot plot24 u 1:2 lt 1 w l  title t1.m2, \
     plot25 u 1:2 lt 2 w l  title t2.m2, \
     plot26 u 1:2 lt 3 w l  title t3.m2, \
     plot27 u 1:2 lt 4 w l  title t4.m2


set terminal qt 2 ; 
set title "10 hPa"
plot plot28  u 1:2 lt 1 w l  title t1.m2, \
     plot29  u 1:2 lt 2 w l  title t2.m2, \
     plot210 u 1:2 lt 3 w l  title t3.m2, \
     plot211 u 1:2 lt 4 w l  title t4.m2





EOF

