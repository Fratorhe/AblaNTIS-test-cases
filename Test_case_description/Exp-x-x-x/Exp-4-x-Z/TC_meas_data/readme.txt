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
Notes for Exp-4-x-Z
----------------------------------------

   * T2K and T2B were labeled as such for experimental comparison of the two different types when exposed to similar conditions. 

   * The following TCs were killed by exceeding their limit temperature: T1; T2; T2K; T3; T4; T5; and T6. After the limit is reached NaNs are inserted into the data as the measurements are not reliable anymore.

   * T1 should be considered with care as it seems to experience malfuncioning well below the operative limit of type-B thermocouples. This may be an indication of a bigger uncertainties for this specific measurement..

   * T7 has a strange behavior after plasma is switched off. Data need to be taken with care as accuracy may be questionable.

   * T10 reaches quitehigh temperatures. This behavior may be explained by a "direct" exposure to the flow caused by a gap between the sample and the back insulator. Howevr, it is suggested that the data are taken with care as this effect cannot be reproduced numerically.
