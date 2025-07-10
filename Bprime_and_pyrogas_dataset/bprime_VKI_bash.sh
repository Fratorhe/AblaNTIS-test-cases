#!/bin/bash

# Example of bash script to call recursively the "brime" function of Mutation++ and generate B' tables.
# After proper installation of M++ and creation of a mixture file with the name of the below "mixture" variable (check mixture using
# the "checkmix" option of Mutation++; this script can be called passing as single parameter the name of the global output file (ex. "./brime_VKI_bash.sh output_file.dat") 

# Output of the script
# 1) Global output file (see below) including tables for all the selected pressures and B'g
# 2) Separate files, one for each pressure and B'g, named "p_${pressure}_Bpg_${bp_g}.dat" (where ${pressure} and ${bp_g} are the current pressure and B'g, respectively).

# Global output file name passed as a parameter from command line
out=$1

source ~/.bashrc

# Mixture name
# Uncomment the relevant mixture.

# Air environment
#mixture=carbonPhenolInAir_old  # Old original elemental composition for AblaNTIS
#mixture=carbonPhenolInAir_AblaNTIS # Final AblaNTIS composition used for the test cases
#mixture=carbonPhenolInAir_demixed # Final AblaNTIS composition for pyrogas but demixed freestream

# Nitrogen environment
#mixture=carbonPhenolInNitrogen_old
mixture=carbonPhenolInNitrogen_AblaNTIS # Final AblaNTIS composition used for the test cases

# Pyrolysis gas elemental composition name
pyro=VKIZuramPyroGas # As evaluated in Ablantis TN-1 based on Torres (TGA) char density

# Pressure values in Pa
pressures=(1.0e+05 7.5e+04  5.0e+04 2.5e+04 1.0e+04 7.5e+03 5.0e+03 2.5e+03 1.0e+03 1.0e+02)

# Pyrolysis gas non-dimensional flux value

bp_gs=(1.00000e+01 7.50000e+00 5.50000e+00 4.00000e+00 3.00000e+00 2.40000e+00 1.90000e+00 1.50000e+00 1.20000e+00 1.00000e+00 8.00000e-01 7.00000e-01 6.00000e-01 5.00000e-01 4.00000e-01 3.20000e-01 2.50000e-01
2.00000e-01 1.50000e-01 1.00000e-01 7.00000e-02 4.00000e-02 2.00000e-02 0.00000e+00)


# Temperature range and steps
T_min=300
T_max=3500
dT=50 

# Check for global output file existence and ask user what to do.
if [ -e  $out ]
then
echo "File $out exists! Do you wish to continue and overwrite it (type 1 or 2)?"
   select yn in "Yes" "No"
   do
       case $yn in
           Yes ) echo "Deleting file and continue script execution."; rm -rf $out; break;;
           No ) echo "Quitting, script not executed."; exit;;
       esac
   done
fi

# Create folder for tables
mkdir Tab

# Loop over pressures
for pressure in "${pressures[@]}"
do
   # Loop over pyrolysis gas flux


   for bp_g in "${bp_gs[@]}"
   do
   echo $pressure $bp_g > Bg.txt
      if [ $bp_g == ${bp_gs[0]} ] && [ $pressure == ${pressures[0]} ] 
      then
         echo "P=$pressure [bar] & B'g=$bp_g" > $out
      else
         echo "P=$pressure [bar] & B'g=$bp_g" >> $out
      fi

# Call bprime 
      bprime -T $T_min:$dT:$T_max -P  $pressure -b  $bp_g -m  $mixture -bl  BLedge -py $pyro | tee -a out Tab/tab_${mixture}_p_${pressure}_Bpg_${bp_g}.txt >/dev/null	
	

# B prime Table generation in a PATO-like form
	for (( X=0; X<65; X++ ))
	do
	   echo $pressure $bp_g >> Bg.txt
	done

      awk '{ print $2, $1 , $3*1000000}' Tab/tab_${mixture}_p_${pressure}_Bpg_${bp_g}.txt  > Bc.txt

      paste Bg.txt Bc.txt >> B_TAB_${mixture}.txt
	
      echo "#########################################################" >> out
   done
done

sed '1~66d' B_TAB_${mixture}.txt >   Bprime_${mixture}.txt
rm B_TAB_${mixture}.txt Bc.txt Bg.txt




