---
layout: default
title: 10. Irrigation module
parent: Modules
nav_order: 10
---

# Irrigation module

This module contains information about the general irrigation practices of the household on it's largest plot.

<a href="../Modules/df_irri_mgmt.xlsx" download> Download the Irrigation Module xlsxform </a>


1.  **access_to_irrgation** (s): Do you have access to irrigation for the largest  plot of ?    

        Choices: Yes, No

2.  **irrigation_done** (s) Did you irrigate your largest  plot?    

        Choices: Yes, No

3.  **source_of_irrigation** (m): Source of irrigation for  (Select all that apply) 

        Choices: River,Canal,Pond/Tank,Shallow TubeWell,Deep TubeWell
        Relevant : If irrigation_done was Yes. 

4.  **application_stage** (m)   At what stage was irrigation applied in? (Select all that apply)
    
        Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
        Relevant : If irrigation_done was Yes. 

5.  **irrigation_times** (s) : Number of irrigations applied after crop establishment (Select one)  

        Choices: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,
        29,30
        Relevant : If irrigation_done was Yes, and source_of_irrigation was not canal. 

6.  **irrigation_decision_factor** (m): How do you decide when to irrigate? (Select all that apply)

        Relevant : If the number of irrigation done was more than 0
        Choices: Crop Growth Stages, Soil dryness/cracking,Disappearance of flood water,Visible crop stress
        
7.  **constraint_factor** (m): If  was not irrigated when required, why? (Select all that apply)    

        Choices: Expensive,Sufficient Rainfall,Irrigation not required,Water not available
        when required,Pump/Tubewell not available when required,Other
        Relevant : If irrigation_done was no

8.  **tubewell_depth** (d) : Depth of tubewell in FEET used to irrigate

        Relevant: if source_of_irrigation was ShallowTubeWell or source_of_irrigation was DeepTubeWell
    
9.  **pump_use** (s)    Did  use pump to irrigate?  

        Choices: Yes,No
        Relevant: If irrigation_done was yes

10. **pump_energy_src** (s): Energy source for the pump 

        Choices: Electricity,Diesel,Both electricity and diesel
        Relevant: If pump_use was yes

11. **pump_hp** (s): Select the Horsepower of the pump  

        Choices: 0 to 1 HP,>1 to 2 HP,>2 to 5 HP,5-10 HP,10-20 HP,20-30 HP,30-40 HP,>40 HP
        Relevant: If pump_use was yes

12. **lay_flat_pipe** (s) : Did you use lay flat pipe to irrigate?  

        Choices: Yes,No

{: .note}
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 


