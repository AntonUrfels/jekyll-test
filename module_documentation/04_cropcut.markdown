---
layout: default
title: 04. Cropcut module
parent: Modules
nav_order: 1
---

# Cropcut module

This module contains crop cut details of the farmers. There is a preceding question that the enumerator needs to ask.

[Download the Crop Cut Module xlsxform](Modules/df_cropcut.xlsx) 

cropcut_done (s): The crop cut details survey questions are only available if prior crop cut for the same survey season was done in the farmer’s field.

          Choices: Yes, No

This section uses crop cut data available in a separate excel file to auto populate the required data based on the farmer’s name. 

1.  Fname (t): Enumerators are expected to select a farmers name from a list of farmer name. Based on the selection of the name, the rest of the details are auto populated from the  preloaded dataset. 

2.  District (a): The district data of the farmer based on the existing crop cut data

3.  farmerName (a): The farmer name as selected in ${Fname}.

4.  Block (a): The Block data of the farmer based on the existing crop cut data. 
5.  Village (a): The village data of the farmer based on the existing crop cut data.
6.  mobile_1 (a): Mobile number is auto populated based on the existing crop cut data. 
7.  tagb_quad_1 (a):  Bio-mass of crop cut quadrant – 1. 
8.  grain_weight_quad_1 (a): The grain weight of quadrant - 1
9.  moist_quad_1 (a): The moisture percentage of quadrant - 1
10. tagb_quad_2 (a): Bio-mass of crop cut quadrant – 2
11. grain_weight_quad_2 (a): The grain weight of quadrant - 2
12. moist_quad_2 (a): The moisture percentage of quadrant - 2
13. tagb_quad_3 (a):  Bio-mass of crop cut quadrant – 3
14. grain_weight_quad_3 (a): he grain weight of quadrant - 3
15. moist_quad_3 (a): The moisture percentage of quadrant - 3
16. grainYield_tonPerHa (a): The calculated crop cut grain yield based on the existing dataset. 
17. ccCheck  (n): Note for the enumerators to verify if they have pulled the right farmers information. 

<div class="alert">

**Requirements for the preloaded dataset:**

In order to pull (auto populate) the crop cut dataset the excel sheet that contains the crop cut dataset should be named “cropcutdata”. And it needs to have these columns headings:

district, fname, block, village, mobile, q1tagb, q1gweight, q1gmoist, q2tagb, q2gweight, q2gmoist, q3tagb, q3gweight, q3gmoist, grainYld_tonPerHa

Note: Pay attention to casing of the alphabets. 
Remember if few of the columns are missing in the cropcutdata – the form will still work. 
</div>