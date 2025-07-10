    /\   | |   | |     | \ | |__   __|_   _|/ ____|
   /  \  | |__ | | __ _|  \| |  | |    | | | (___
  / /\ \ | '_ \| |/ _` | . ` |  | |    | |  \___ \
 / ____ \| |_) | | (_| | |\  |  | |   _| |_ ____) |
/_/    \_\_.__/|_|\__,_|_| \_|  |_|  |_____|_____/

PYROLYSIS GAS AND B'-TABLE DATASET

This folder contains the B' tables and the transport properties for the official pyrolysis gas of AblaNTIS (mole frc. C:0.171, H:0.722, O:0.107).
All the data have been generate with the Mutation++ v1.0.1 that can be cloned from https://github.com/mutationpp/Mutationpp

Content descriptions:

   * carbonPhenolInAir_AblaNTIS.xml: Mutation++ mixture of Air+Pyrogas for B' table generation.

   * carbonPhenolInNitrogen_AblaNTIS.xml: Mutation++ mixture of Nitrogen+Pyrogas for B' table generation.

   * bprime_VKI_bash.sh: Example bash script to generate B' tables using either carbonPhenolInAir_AblaNTIS.xml or carbonPhenolInNitrogen_AblaNTIS.xml.

   * carbonPhenolInAir: contains B' tables for Air+Pyrogas generated using carbonPhenolInAir_AblaNTIS.xml and some plots of part of the data.

   * carbonPhenolInNitrogen: contains B' tables for Nitrogen+Pyrogas generated using carbonPhenolInNitrogen_AblaNTIS.xml and some plots of part of the data.

   * Pyrogas: contains the generated transport properties for the AblaNTIS pyrogas and some plots.


