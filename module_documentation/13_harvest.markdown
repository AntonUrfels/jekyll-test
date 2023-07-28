---
layout: default
title: 13. Harvest module
parent: Modules
nav_order: 13
---

# Harvest module

This module contains questions about harvest activities. 

[Download the Harvest Module xlsxform](../Modules/df_harvest.xlsx)


1.  **harvest_date** (d):  Harvest date of  in  

2.  **harvest_days** (a) : Harvest days calculated

        Calculation : date() - date()   

3.  **harvest_method** (s) : Harvesting method of  in   

        Choices: Combine, Reaper, Manual

4.  **crop_residue** (s):   crop residue was-   

        Choices: Removed from the field, Retained in the field,B urnt in the field

5.  **threshing_method** (s) : If reaper or manual, threshing method in     

        Choices: Manual,Machine
        Relevant: if reaper or manual threshing  in harvest method

6.  **total_production_lp** (d):    Total  yield from  in QUINTAL (self reported)
    
7.  **qunital_per_acre** (a) :  Qunital per acre calculated based on previous entries

        Calculation: round( div ${cropLarestAreaAcre}, 2)

8.  **ton_per_hc** (a):

    Calculation: round(( * 2.5) div 10, 2)
    
9.  **avg_farm_gate_price** (d): What was the farm gate price per quintal for  at the time of harvest? (Rs / Taka per quintal)  

10. **production_compare_5_years** (s) : How is the production compared of  to the last five years? 

        Choices: Higher than average,Average,Below average

{: .note}
The harvest days are calculated and shown to the data collector to ensure the data is logical

{: .note}
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. This module also requires “site_characterstic_crop_establishment” module. 
