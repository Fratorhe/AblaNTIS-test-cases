    /\   | |   | |     | \ | |__   __|_   _|/ ____|
   /  \  | |__ | | __ _|  \| |  | |    | | | (___
  / /\ \ | '_ \| |/ _` | . ` |  | |    | |  \___ \
 / ____ \| |_) | | (_| | |\  |  | |   _| |_ ____) |
/_/    \_\_.__/|_|\__,_|_| \_|  |_|  |_____|_____/

THERMOCOUPLE DATA FROM PLASMATRON EXPERIMENTAL CAMPAIGN

This folder contains the info on the position of the thermocouples used in the Plasmatron tests and the corresponding measurements.

Content descriptions:

   * tc_position_table.pdf: Table indicating the positions of the thermocouples. "Axial" indicates distance from sample bottom (i.e., end of the ablative material, before the insulator), x- and y-pos are distances from the sample axis in a 2D Cartesian grid, radial is the resulting radial location from the center axis (all in mm).

   * tc_position_sketch.pdf: Sketch of the thermocouple positions as given in the table.

   * tc_measurements.dat: Thermocouple data: time in seconds, 0 corresponds to sample being fully injected. Temperature data are in Kelvin, NaN is possible if limit temperature is exceeded or no signal (e.g., too low temperarure for type-B thermocouples.)

   * stag_point_temp.dat: Temperature [K] on the stagnation point measured by means of the pyrometer. Time in seconds, 0 corresponds to sample being fully injected. NaN measurements have been removed.

----------------------------------------
General notes
----------------------------------------

   * One single type (type-K) or two different types (type-K and type-B) of thermocouples were used, depending on the experimental conditions. Thermocouple type is normally not indicated unless needed for some reason.

   * Data recorded after a thermocouple exceeded its limit temperature (assumed 1573 K and and 2093 K for type-K and type-B, respectively) have been replaced by NaN in the dataset since considered not reliable anymore.

   * The suggested accuracy is ±27 K for both thermocouple types. They've been calculated independently for each type considering:

      - The upper bounds of the tolerances of the specific thermocouple and the corresponding extension cable, gloabally ±18 K for both type-K and type-B.

      - That a number of additional sources of errors may exist and is difficult/impossible to quantify, e.g., contact quality, thermal conduction of thermocouple cables, etc. Therefore, a 1.5 safety factor was included for both types.  

----------------------------------------
Notes for Exp-3-x-Z
----------------------------------------

   * T1 removed from the data because not working properly.

   * The following TCs were killed by exceeding their limit temperature: T3; T5; and T6. After the limit is reached NaNs are inserted into the data as the measurements are not reliable anymore.
