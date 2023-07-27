---
layout: default
title: 17. Greenhouse gas tracking module
parent: Modules
nav_order: 1
---

# Greenhouse gas tracking module

This module contains information to track GHG emissions.



<a href="../Modules/df_ghg.xlsx" download> Download the GHG Emissions Module xlsxform </a>



1.  **flood_frequency** (s) : What is the frequency of flooding of the largest plot in a given season   

    Choices: 1 day,2 days,3 days,4 days,5 days,6 days,7 days,1 Week,2 Weeks,
        3 Weeks,4 Weeks

2.  **number_passespuddling** (s): What is the average number of passes for Puddling?   

    Choices : 1,2,3,4,5

3.  **number_passestyne** (s): What is the average number of passes for Tyne Cultivator?    

    Choices: 1,2,3,4,5

4.  **number_passesdisc** (s): What is the average number of passes for Disc Harrow?    

    Chocies: 1,2,3,4,5

5.  **number_passes4wt** (s): What is the average number of passes for Four Wheel Tractor Rotavator?    

    Choices: 1,2,3,4,5

6.  **number_passes2wt** (s):What is the average number of passes for Two Wheel Tractor Rotavator?  

    Choices: 1,2,3,4,5

7.  **number_passesbullock** (s): What is the average number of passes for Bullock drawn plough?    

    Choices: 1,2,3,4,5

8.  **perc_residue_removed** (s):   What is the percentage of residue removed by tyne cultivation?  

    Choices: 0,5,10,20,30,40,50,60,70,80,90,100

9.  **fym_used_how** (m):  : How is FYM used on your farm?  

    Choices: Soil Amendment,Fuel,Sale,Waste,Other

10. **perc_soil_amendement** (s):   What percentage of your FYM is used as a soil amendment?    

    Choices:  0,5,10,20,30,40,50,60,70,80,90,100

11. **rice_standing_water_early_growth** (d): For how many days was there standing water in the largestplot during early vegetative growth stage?   

12. **rice_standing_water_mid_growth** (d):  For how many days was there standing water in the largestplot during mid-vegetative growth stage?  


13. **rice_standing_water_flowering** (d):  For how many days was there standing water in the largestplot during  flowering growth stage?   

14. **rice_standing_water_grain_filling** (d): For how many days was there standing water in the largestplot during grain filling growth stage?

<div class = 'alert'>
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module.
 </div>
