---
layout: default
title: 08. Fertility management module
parent: Modules
nav_order: 1
---

# Fertility management module

This module contains information about the general fertility management practices of the largest plot.


<a href="../Modules/df_fert_mgmt.xlsx" download> Download the General Fertility Management Module xlsxform </a>


 
1.  **shc_recommendation** (s): :Are soil health card recommendations available for the largestplot?

    Choices: No, Yes and information used, Yes but information not used

2.  **fym_applied** (s):  Was Farm Yard Manure (FYM) applied in the largest  plot in last one year?

        Choices: Yes, No

3.  **fym_no_applied** (s): If no, What is your reason for not using FYM?

        Choices: Not Available,Used for fuel,Sold

4.  **fym_applied_qty** (d):    How much FYM in quintal is applied during each application in the largest plot?

        Relevant: Only if FYM was applied


5.  **fym_applied_avg_five_year_times** (s): Over the last five years, how many times FYM was applied in the largest plot?

        Relevant: Only if FYM was applied
                
        Choices: 0,1,2,3,4,5,6,7,8,9,10


6.  **apply_minfert** (s): Did you apply mineral fertilizer in the largest plot?

        Choices: Yes, No


<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables.
 </div>