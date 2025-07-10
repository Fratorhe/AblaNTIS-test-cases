#!/bin/bash

source ~/.bashrc

# Mixture name
mixture=Pyrogas_AblaNTIS

# Pressure values in bar
pressures=(100000 10000 1000)
#pressures=(1.0e-03 2.0e+00)

# Temperature range and steps
T_min=300
T_max=4000
dT=100


# Loop over pressures
for pressure in "${pressures[@]}"
do
#      if [ $pressure == ${pressures[0]} ] 
#      then
#         echo "P=$pressure [bar]"  > $out
#      else
#         echo "P=$pressure [bar]"  >> $out
#      fi
# Call bprime and
      mppequil -T $T_min:$dT:$T_max -P  $pressure -m 0,32 ../$mixture  >  p_${pressure}.dat 2>&1

      wait 
done



