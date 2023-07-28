---
layout: default
title: 11. Production constraints module
parent: Modules
nav_order: 11
---

# Production constraints module

This module contains information about key production constaints incl. droughts, floods, pests, diseases and lodging.

<a href="../Modules/df_prod_constraint.xlsx" download> Download the Production Constraints Module xlsxform </a>


1.  **face_drought** (s) : Did your  crop face drought stress?  

        Choices: Yes,No

2.  **drought_growth_stage** (m): In which growth stage(s) did drought affect the crop?  (Select all that apply)    

Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
Relevant: If faces drought 

2.  **flood_stress** (s):  Did your  crop face flood stress? 

        Choices: Yes,No

3.  **flood_growth_stage** (m):  In which growth stage(s) did flood affect the crop?  (Select all that apply)   

        Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
        Relevant: if flood stress was yes

4.  **insecticide_applied** (s): Were insecticides applied in the largest  ?

        Choices: Yes,No

5.  **insecticide_name** (t)    : If yes, name of insecticides  

        Relevant: If insectice_applied was yes

6.  **insecticide_app_method** (m) : Method of Insecticide application  

        Choices: Irrigation Applied,Soil Applied,Canopy Applied (Foiler spray)

7.  **pesticide_applied** (s): Were pesticides applied in  for disease control for ?    

        Choices: Yes,No

8.  **pesticide_name** (t): If yes, name of pesticides  

9.  **pesticide_app_method** (m): Method of Pesticide application   

        Choices: Seed Treatment,Soil Applied,Canopy Applied (Foiler spray)

10. **lodging_perc**    Percentage of crop that lodged (%) in   

        Choices: 0,5,10,20,30,40,50,60,70,80,90,100

{: .note}
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 

