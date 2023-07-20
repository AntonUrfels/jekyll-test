---
layout: default
title: 6. Land unit and ownership module
parent: Modules
nav_order: 1
---

# Land unit and ownership module

The module contains the details about the land unit used and land ownership details for a respondent.

[Download the Land Units and Land Ownership Module xlsxform](Modules/df_landunit.xlsx)


1.  llu (s): local land unit used by respondent referring to the largest plot 
        
        Choices: Acre, Bigha, Decimal, Dhur, Kattha, Guntha

2.  local_to_acre (d): How many local land unit  are in 1 acre?

3.  total_cultivated_land (d): Total cultivated land (owned and leased) in this season in the local land unit 

4.  total_crop_cult_area (d): Total crop  cultivated land  (owned and leased) in this season in local land unit. 

        Constraint: The system checks to see if crop cultivated area is lesser than the total cultivated land

5.  surveyed_plot (d): Largest  plot (owned or leased) in this season in 

        Constraint: The system checks to see if the surveyed plot response is lesser than total crop cultivated area. 

6.  cropLarestAreaAcre (a): This field calculates and converts the surveyed plot to acre as per the local to acre conversion. This data in the field is not shown anywhere and need to be displayed using a note. 

        Calculation: surveyed plot / local to area (conversion unit). 
        The output is then rounded to 3 decimal digits

7.  ownership(s): Type of ownership of the largest  in local land unit.   plot?

        Choices: Owned, Leased-in, Share Cropping

<div class = 'alert'>
The entire “Land Unit and Ownership” section has been designed to fit in one page during data collection using phones or tablets. The “field-list” appearance has been used to get the desired user interface </div>

<br>
<div class = 'important'>Note: The “Land Unit and Ownership” module is dependent on the Respondent module. The crop name (crop_name) that is displayed in the data collection app borrows the variable from the “Respondent module”. Make sure to also include the crop name question for the form to work. </div>


</div>
