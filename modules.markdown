---
layout: page
title: Module Documentation
permalink: /modules/
description: Here's a detailed overview of the Landscape Crop Assessment Survey (LCAS) modules. 

---

# Module Documentation

This page provides an overview of the different LCAS modules. Each modules aims to elicit key information about drivers and outcomes of the surveyed agricultural system.

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/lcas/assets/bootstrap.min.css">

<link rel="stylesheet" href="/lcas/assets/custom.css">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"> -->


<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        **Introduction**
      </button></h2>

<div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
Key Identifier for question types

The questions are available in various types:

1.	Text: The enumerator gets to type text using the keyboard. This type of question will be denoted by (t).

2.	Integer: The enumerator gets to type an integer in these types of questions and are denote by (i).

3.	Decimal: The enumerator gets to enter a decimal number and are denote by (d).

4.	Single select: The enumerator is only allowed to select one option from the given set of options. Typically used in yes/no questions but not limited to them. These types of questions are denoted by (s). These types of questions need choices to be mentioned.

5.	Multi-select Multiple options can be selected by the enumerator for this type of questions. They are denoted by (m), and choices need to mentioned.

6.	 Date: The enumerator gets to select date in these types of questions, and are denoted by (da)

7.	Auto-filled: There are few questions (labels) or meta data that will get auto-filled based on earlier questions. These can also be calculated fields. These fields are denoted by (a)

8.	Notes: Notes are question labels that allow some special information to be given to enumerators/readers. It does not have an input field, and are denoted by (n).

9.	In the labels (questions), all the variables denoted by “${  }” indicate that the text displayed here change as per values entered for them. 

For e.g.: Question: Enter your age? 
			 23
 Your age is ${age}. The value of age will change as per the response of the respondent and can be viewed during data collection.

</div>
</div>
</div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        **Survey Module:**
      </button></h2>
<div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
This module contains the meta data of the entire survey. These variable names include:

1.	device_id (a): The id of the device used to collect the survey data.
2.	start (a): The start time of the survey which depends on the clock that is on the device
3.	end (a): The end time of the survey which depends on the clock on the device.
4.	collection_date (a): The date on which the survey data is being collected.
5.	wc (n): This note is for the enumerators to read out aloud to the respondents. It contains the information about the survey.
6.	consentDisclaimer (n): This note is for the enumerators to read out aloud to the respondents so that they are made aware of the use of the data of the survey and data privacy details.
7.	consent (s): This is a yes/no question to get the consent of the respondent to take part in the survey. 
Required: Yes, this is a mandatory field for the survey for continuing the survey
Choices: Yes, No
-------
</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        **Location Module**
      </button></h2>
<div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">

This module contains the location details of the respondents. 

1. country: Country of the respondent
2. ADM1: The highest administrative division of the country (State in India)

        Type: Select one type

3.	ADM2: Administrative division that comes after ADM1 (District in India)

        Type: Select one type
        
        Choice-filter: The choices that appear on this question are dependent 
        on the choice made in ADM 1. 

4.	ADM3: Administrative division after ADM2 (Block)

        Type: Select one type
        Choice-filter: The choices that appear on this question are dependent
        on the choice made in ADM 1. 

5.	ADM4: Administrative division after ADM3 (village)

        Type: This is a text type question. The enumerator is free to type the
        name of the village as per the respondent’s response. 

</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        **Crop cut Module**

      </button></h2>
<div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
This module contains crop cut details of the farmers. There is a preceding question that the enumerator needs to ask. 

<div class="alert-primary">cropcut_done (s): The crop cut details survey questions are only available if prior crop cut for the same survey season was done in the farmer’s field. </div>

        Choices: Yes, No

This section uses crop cut data available in a separate excel file to auto populate the required data based on the farmer’s name. 

1.	Fname (t): Enumerators are expected to select a farmers name from a list of farmer name. Based on the selection of the name, the rest of the details are auto populated from the  preloaded dataset. 

2.	District (a): The district data of the farmer based on the existing crop cut data

3.	farmerName (a): The farmer name as selected in ${Fname}.

4.	Block (a): The Block data of the farmer based on the existing crop cut data. 
5.	Village (a): The village data of the farmer based on the existing crop cut data.
6.	mobile_1 (a): Mobile number is auto populated based on the existing crop cut data. 
7.	tagb_quad_1 (a):  Bio-mass of crop cut quadrant – 1. 
8.	grain_weight_quad_1 (a): The grain weight of quadrant - 1
9.	moist_quad_1 (a): The moisture percentage of quadrant - 1
10.	tagb_quad_2 (a): Bio-mass of crop cut quadrant – 2
11.	grain_weight_quad_2 (a): The grain weight of quadrant - 2
12.	moist_quad_2 (a): The moisture percentage of quadrant - 2
13.	tagb_quad_3 (a):  Bio-mass of crop cut quadrant – 3
14.	grain_weight_quad_3 (a): he grain weight of quadrant - 3
15.	moist_quad_3 (a): The moisture percentage of quadrant - 3
16.	grainYield_tonPerHa (a): The calculated crop cut grain yield based on the existing dataset. 
17.	ccCheck  (n): Note for the enumerators to verify if they have pulled the right farmers information. 

<div class="alert">

**Requirements for the preloaded dataset:**

In order to pull (auto populate) the crop cut dataset the excel sheet that contains the crop cut dataset should be named “cropcutdata”. And it needs to have these columns headings:

district, fname, block, village, mobile, q1tagb, q1gweight, q1gmoist, q2tagb, q2gweight, q2gmoist, q3tagb, q3gweight, q3gmoist, grainYld_tonPerHa

Note: Pay attention to casing of the alphabets. 
Remember if few of the columns are missing in the cropcutdata – the form will still work. 
</div>

</div></div></div>



<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
        **Respondent Module**
      </button></h2>

<div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">


This module contains the personal information of the respondents.

1.	name (t): The name of the respondent ${farmer}

2.	sex (s): The gender of the respondent 

        Choices: male, female

3.	edu (m):  Education level of the farmer

        Choices: No schooling, Primary, Matriculation, Senior secondary
                 ,Bachelors, Masters, PhD
4.	group (m) : social category of the farmer (For India only)

        Choices: SC, ST, OBC, General, Other

5.	Mobile (i): Mobile number of the farmer

        Constraint: Only a standard ten-digit mobile number can be entered.

6.	crop_name (s): select the crop for the survey

        Choices: Rice, Wheat, Maize

7.	survey_season (s): select the season of the crop

        Choices: Aman, Aus, Boro, Kharif, Rabi, Kharif, Rabi, Summer
		(The choices only show up for Rice and not for other crops)

8.	harvest_year (s): select the year in which the crop was harvested. 

<div class = "alert">The entire “Respondent” section has been designed to fit in one page during data collection using phones or tablets. The “field-list” appearance has been used to get the desired user interface. </div>

</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        **Land Unit and Ownership**
      </button></h2>
<div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
The module contains the details about the land unit used and land ownership details for a respondent.

1.	llu (s): local land unit used by respondent referring to the largest plot 
 		
        Choices: Acre, Bigha, Decimal, Dhur, Kattha, Guntha

2.	local_to_acre (d): How many local land unit ${llu} are in 1 acre?

3.	total_cultivated_land (d): Total cultivated land (owned and leased) in this season in the local land unit ${llu}

4.	total_crop_cult_area (d): Total crop ${crop_name} cultivated land ${total_cultivated_land} (owned and leased) in this season in local land unit. ${llu}

        Constraint: The system checks to see if crop cultivated area is lesser than the total cultivated land

5.	surveyed_plot (d): Largest ${crop_name} plot (owned or leased) in this season in ${llu}

        Constraint: The system checks to see if the surveyed plot response is lesser than total crop cultivated area. 

6.	cropLarestAreaAcre (a): This field calculates and converts the surveyed plot to acre as per the local to acre conversion. This data in the field is not shown anywhere and need to be displayed using a note. 

        Calculation: surveyed plot / local to area (conversion unit). 
        The output is then rounded to 3 decimal digits

7.	ownership(s): Type of ownership of the largest ${surveyed_plot} in local land unit. ${llu} ${crop_name} plot?

        Choices: Owned, Leased-in, Share Cropping

<div class = 'alert'>
The entire “Land Unit and Ownership” section has been designed to fit in one page during data collection using phones or tablets. The “field-list” appearance has been used to get the desired user interface </div>

<br>
<div class = 'important'>Note: The “Land Unit and Ownership” module is dependent on the Respondent module. The crop name (crop_name) that is displayed in the data collection app borrows the variable from the “Respondent module”. Make sure to also include the crop name question for the form to work. </div>
</div></div></div></div>


<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
        **Site characteristics and crop establishment**
      </button></h2>
<div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">

This module contains questions about the survey plot and crop establishment

•	soil_texture (s): Soil texture of the largest ${surveyed_plot} in local land unit ${llu} ${crop_name} plot

                
        Choices: Light, Medium, Heavy

•	dry_field (s): At the end of the Kharif season, when is your largest ${surveyed_plot} ${llu} plot dry enough to have access for Rabi crop?

        Choices: Before 3rd week of October, 3rd week of October, 
        4th week of October,1st week of November, 2nd week of November, 
        3rd week of November, 4th week of November, 
        1st week of December, 2nd week of December, 3rd week of December,
        4th week of December, After 4th week of December

•	dry_field_five_year_avg (s): Over the last five years, at the end of the Kharif season, when is your largest ${surveyed_plot} ${llu} plot dry enough to have access for Rabi crop?

        Choices: Before 3rd week of October, 3rd week of October, 4th week of October,
                1st week of November, 2nd week of November, 3rd week of November, 
                4th week of November, 1st week of December, 2nd week of December, 
                3rd week of December, 4th week of December, After 4th week of December

•	recede_water (s):  After flooding/flood irrigation, how long does it take to recede water from your largest ${surveyed_plot} ${llu} plot? 

        Choices: 1 day, 2 days, 3 days, 4 days, 5 days, 6 days, 7 days, 
                1 Week, 2 Weeks, 3 Weeks, 4 Weeks

•	drainage_class	 (s): Drainage class of the largest ${surveyed_plot} ${llu} ${crop_name} plot.

        Choices: Upland, Medium land, Low land

•	soil_perception (s): Farmer’s perception of soil quality on the plot of ${surveyed_plot} ${llu} 

        Choices: High, Medium, Low
 

•	previous_crop (s): Previous major crop cultivated before ${crop_name} in ${surveyed_plot} ${llu} 

        Choices: Bajra, Banana, Blackgram, Caster, Chickpea (Gram), Chilli, 
                Cotton, Fallow,Greengram,GreenManure,Groundnut,IndianMustard,Jowar,
                Lentil, Maize,Mungbean,Other,PigeonPea,Pulses,Redgram,Rice,
                Soybean,Sugarcane,Sunflower, Turmeric, Vegetables, Mentha, Wheat

•	third_crop_yesno (s): Have you grown any third crop on ${surveyed_plot}__${llu} plot

        Choices: Yes, No

•	third_crop_name (s) : Select the third crop grown on ${surveyed_plot}__${llu} plot

        Choices: Bajra, Banana, Blackgram, Caster, Chickpea (Gram), Chilli, 
                Cotton, Fallow, Greengram,GreenManure,Groundnut,IndianMustard,Jowar,
                Lentil, Maize,Mungbean,Other,PigeonPea,Pulses,Redgram,Rice,
                Soybean,Sugarcane,Sunflower, Turmeric, Vegetables, Mentha,
                Wheat

•	prev_crop_tillage (m) 	What was the tillage type for previous ${previous_crop} crop in ${surveyed_plot}__${llu} plot? (select all that apply)

        Choices: Puddling (wet tillage) (NOT applicable for Wheat), 
                Disc harrow, Tyne cultivator, 4 wheel tractor rotavator,
                2 wheel tractor rotavator,Bullock drawn plough, 
                Strip tillage, No tillage, Other

•	prev_crop_harvest_date (da)	Enter date of previous ${previous_crop} crop harvest in ${surveyed_plot}__${llu} plot
•	prev_crop_harvest_method (s) : What was the method of previous crop harvesting?

        Choices: Combine, Reaper, Manual

•	prev_crop_residue (s):  ${previous_crop} crop residue was

        Choices: Removed from the field, Retained in the field, 
                Burnt in the field

•	variety_name (s):  Variety name of ${crop_name}

        Choices: Lists out different varieties of the rice to choose from 

•	variety_name_other (t): Enter name of other ${crop_name} variety

        Relevant: If variety name is selected as “other” the enumerator gets 
                to input the rice variety 
•	variety_type (s): What is the variety type of ${crop_name}?

        Choices: Improved, Hybrid, Other

•	ce_method (s):  ${crop_name} establishment method in the largest ${surveyed_plot} ${llu} plot

        Choices: Manual transplanted (Random), Manual transplanted in line, 
                Directly sown by broadcast method, Directly sown by seed drill, 
                Directly sown followed by busheling, Machine transplanted, 
                Line sowing after tillage, Broadcasting, Zero tillage, Broadcasting, 
                Manual line sowing, Seed drill, Other

•	ce_irrigation (s): Did you apply irrigation at the time of crop establishment in the largest ${surveyed_plot} ${llu} ${crop_name} plot?

        Choices: Yes, No

•	land_prep_method (m): Land preparation method in the largest ${surveyed_plot} ${llu} ${crop_name} plot (select all that apply)

        Choices: Puddling (Wet tillage), Tyne cultivator, Disc harrow,
                4 wheel tractor rotavator, 2 wheel tractor rotavator, 
                Bullock drawn plough, Puddling, Tyne cultivator, Disc harrow, 
                4 wheel tractor rotavator, 2 wheel tractor rotavator, Bullock drawn plough, 
                Puddling, Tyne cultivator, Disc harrow,4 wheel tractor rotavator,
                2 wheel tractor rotavator, Bullock drawn plough, Tyne cultivator, 
                Disc harrow,4 wheel tractor rotavator,2 wheel tractor rotavator, 
                Bullock drawn plough, Strip tillage, No tillage, Puddling, Tyne cultivator, 
                Disc harrow, 4 wheel tractor rotavator, 2 wheel tractor rotavator, Bullock drawn plough,
                Puddling, Tyne cultivator, Disc harrow, 4 wheel tractor rotavator, 
                2 wheel tractor rotavator, Bullock drawn plough, Tyne cultivator, Disc harrow,
                4 wheel tractor rotavator, 2 wheel tractor rotavator, Bullock drawn plough,
                Strip tillage, Tyne cultivator, Disc harrow, 4 wheel tractor rotavator,
                2 wheel tractor rotavator, Bullock drawn plough, Strip tillage, No tillage,
                Tyne cultivator, Disc harrow, 4 wheel tractor rotavator, 2 wheel tractor rotavator, 
                Bullock drawn plough, Strip tillage, Tyne cultivator, Disc harrow,
                4 wheel tractor rotavator, 2 wheel tractor rotavator, Bullock drawn plough,
                Strip tillage, No tillage, Tyne cultivator, Disc harrow,
                4 wheel tractor rotavator, 2 wheel tractor rotavator, Bullock drawn plough, 
                Strip tillage, No tillage

•	rotavator_till_number_of_years (s): 	If tillage by rotavator, number of years of continuous use in ${surveyed_plot} ${llu} plot

        Choices: 1,2,3,4,5,6,7,8,9,10
                
        Relevant: If land preparation method  was Four Wheel Tractor Rotavator
                or Two Wheel Tractor rotavator

•	date_nursery_estd (da) : If rice transplanted, date of nursery establishment for ${surveyed_plot}__${llu} plot

        Relevant: Question only shows up if the crop selected is rice, 
                           and the crop establishment method is Transplanted 
                
        Constraint: The form does not accept any future dates 

•	planting_date_dsr (da): Date of seeding / transplanting / direct sowing (if DSR rice) or
sowing (wheat) in ${surveyed_plot} ${llu} plot for ${crop_name}



<div class = 'alert'>Note: The date for previous crop harvest is displayed for the enumerator to correctly select DSR date which should be after the harvest date of the previous crop 
</div>
<br>
•	seedling_age (c): This is a calculate field and it calculate the seedling age by :

	Calculation: transplanting date – nursery establishment date

<br>
•	delay_reasons (m): If wheat planting was delayed past November 30 in this season, why? 

        Relevant: This question is displayed only for wheat and if the wheat 
                sowing date is after November 30. 

        Choices: Previous crop (e.g. rice) harvested late, Land too wet for ploughing,
                Non availability of tillage equipment, Non availability of seed, 
                No availability of fertilizers, Labor shortage, Lack of moisture at sowing, 
                Lack of funds, No delay, Other
<div class = 'important'>Note: Remember to change the “year” in the module to match the year in the relevant column.
</div> 

<br>
•	delay_reason_others (t): Enter other reason in delay of sowing this season

        Relevant: If delay reasons is selected as other

•	delay_common_reason (m): If wheat planting is commonly delayed past November 30th in most years, why? (Select all that apply)

        Relevant: This question is displayed only for wheat and if the wheat sowing 
                date is after November 30. 

        Choices: Previous crop (e.g. rice) harvested late,
                Land too wet for ploughing,Non availability of tillage equipment, 
                Non availability of seed, No availability of fertilizers,
                Labor shortage, Lack of moisture at sowing, 
                Lack of funds, No Delay


•	delay_common_reason_oth (t): Enter other reason if wheat planting is commonly delayed past Nov 30th in most year.

        Relevant: If common delay reasons is selected as other



•	nursery_determining_factor   (m): What mostly determines the timing of rice nursery establishment? (Select all that apply)

        Relevant: Only for rice

        Choices: Calendar date, Arrival of pre-monsoon showers, 
                Irrigation water availability, Weather forecast information, 
                Practices of neighboring farmers, Seed availability, Other

•	timing_determing_factor (m):  What mostly determines the timing of rice planting in the largest ${surveyed_plot}__${llu} plot? (Select all that apply)

        Relevant: Only for rice

        Choices: Calendar date, Seedling age, Arrival of rains, 
        Irrigation water availability, Labor availability

•	seed_amount (d): ${crop_name} seed amount used for the largest ${surveyed_plot} ${llu} plot in kg


•	seed_source (s): What is the source of seed for ${crop_name} used for the largest ${surveyed_plot}__${llu} plot?

        Choices: Self saved, Neighbor or Relative,Private seed dealer, 
                Cooperative, Government / KVK / SAU

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables.
 </div>

</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
        **Fertility Management**
      </button></h2>
<div id="collapseEight" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
 
•	shc_recommendation (s): :Are soil health card recommendations available for the largest  ${surveyed_plot}__${llu} plot?

	Choices: No, Yes and information used, Yes but information not used

•	fym_applied (s):  Was Farm Yard Manure (FYM) applied in the largest ${surveyed_plot}__${llu} plot in last one year?

        Choices: Yes, No

•	fym_no_applied (s): If no, What is your reason for not using FYM?

        Choices: Not Available,Used for fuel,Sold

•	fym_applied_qty (d):	How much FYM in quintal is applied during each application in the largest [${surveyed_plot}__${llu}] ${crop_name} plot?

        Relevant: Only if FYM was applied


•	fym_applied_avg_five_year_times (s): Over the last five years, how many times FYM was applied in the largest ${surveyed_plot}__${llu} plot?

        Relevant: Only if FYM was applied
                
        Choices: 0,1,2,3,4,5,6,7,8,9,10


•	apply_minfert (s): Did you apply mineral fertilizer in the largest ${surveyed_plot} ${llu}] ${crop_name} plot?

        Choices: Yes, No


<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables.
 </div>

 </div></div></div>


<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
        **Detailed Fertility Management**
      </button></h2>
<div id="collapseNine" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">



- chem_fert_applied (m): Select the fertilizer(s) applied at planting (basal) for ${crop_name} 

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,
                 Boron,Other (e.g. Liquid fertilizers),None

- amt_dap_basal (d): DAP at planting (basal) in kg	
		 
	Relevant: Only if DAP is selected as chemical fertilizer applied

- amt_npk_basal (d): NPK product (mixture fertilizer) at planting (basal) in kg	

	Relevant: Only if NPK is selected as chemical fertilizer applied


- amt_urea_basal (d): Urea at planting (basal) in kg	

        Relevant: Only if Urea is selected as chemical fertilizer applied

- amt_npks_basal (d): NPKS at planting (basal) in kg	

        Relevant: Only if NPKS is selected as chemical fertilizer applied


- amt_mop_basal (d): MoP at planting (basal) in kg	

        Relevant: Only if MOP is selected as chemical fertilizer applied

- amt_ssp_basal (d): SSP at planting (basal) in kg

        Relevant: Only if SSP is selected as chemical fertilizer applied
	
- amt_tsp_basal	(d): TSP at planting (basal) in kg

        Relevant: Only if TSP is selected as chemical fertilizer applied
	
- amt_znso4_basal (d): Zinc Sulphate at planting (basal) in kg

        Relevant: Only if Zinc sulphate is selected as chemical fertilizer applied
	

- amt_gypsum_basal (d): Gypsum at planting (basal) in kg	

        Relevant: Only if Gypsum is selected as chemical fertilizer applied

- amt_boron_basal (d): Boron at planting (basal) in kg

        Relevant: Only if Boron is selected as chemical fertilizer applied
	
- other_chem_ferts (t): Enter name of other basal fertilizer applied	

        Relevant: Only if other chemical fertilizer is selected as chemical fertilizer applied

- amt_other_chem_ferts (d): Total ${other_chem_ferts} applied in kg	

        Relevant: Only if other chemical fertilizer is selected as chemical fertilizer applied
 

<b>First top dressing</b>

- td1_fert_applied (m):	Select the fertilizer(s) applied at first top dressing for ${crop_name} 

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,
                 Other (e.g. Liquid fertilizers),None


- td1_amt_dap (d) : Basal DAP applied: ${amt_dap_basal} kg\nEnter DAP amount applied at first top dressing in KG

- fert_dap_td1_das (i) : Timing of first DAP top dressing (in days after sowing/transplanting)


-	td1_amt_npk (d) :    Enter NPK amount applied at first top dressing in KG

-	fert_npk_td1_das (i):   Timing of first NPK top dressing (in days after 
sowing/transplanting)

-	td1_amt_urea (d) :    Enter UREA amount applied at first top dressing in KG
-	fert_urea_td1_das (i):   Timing of first UREA top dressing (in days after 
sowing/transplanting)

-	td1_amt_npks (d) :    Enter NPKS amount applied at first top dressing in KG
-	fert_npks_td1_das (i):   Timing of first NPKS top dressing (in days after 
sowing/transplanting)

-	td1_amt_mop (d) :    Enter MOP amount applied at first top dressing in KG
-	fert_mop_td1_das (i):   Timing of first MOP top dressing (in days after 
sowing/transplanting)
-	td1_amt_ssp (d) :    Enter SSP amount applied at first top dressing in KG
-	fert_ssp_td1_das (i):   Timing of first SSP top dressing (in days after 
sowing/transplanting)

-	td1_amt_tsp (d) :    Enter TSP amount applied at first top dressing in KG
-	fert_tsp_td1_das (i):   Timing of first TSP top dressing (in days after 
sowing/transplanting)

-	td1_amt_znso4 (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
-	fert_znso4_td1_das (i):   Timing of first Zinc Sulphate top dressing (in days after 
sowing/transplanting)

-	td1_amt_gypsum (d) :    Enter GYPSUM amount applied at first top dressing in KG
-	fert_gypsum_td1_das (i):   Timing of first GYPSUM top dressing (in days after 
sowing/transplanting)

-	td1_amt_boron (d) :    Enter Boron amount applied at first top dressing in KG
-	fert_borom_td1_das (i):   Timing of first Boron top dressing (in days after 
sowing/transplanting)

-	td1_oth_name : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
-	td1_amt_oth (d) :    Enter TSP amount applied at first top dressing in KG
-	fert_oth_td1_das (i):   Timing of first TSP top dressing (in days after 
sowing/transplanting)
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>

<b>Second top dressing </b>
-	td2_fert_applied (m):	Select the fertilizer(s) applied at second top dressing for ${crop_name} 

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,Other (e.g. Liquid fertilizers),None

-	td2_amt_dap (d) :    Enter DAP amount applied at first top dressing in KG
-	fert_dap_td2_das:    Timing of first DAP top dressing (in days after sowing/transplanting)

-	td2_amt_npk (d) :    Enter NPK amount applied at first top dressing in KG
-	fert_npk_td2_das (i):   Timing of first NPK top dressing (in days after 
sowing/transplanting)

-	td2_amt_urea (d) :    Enter UREA amount applied at first top dressing in KG
-	fert_urea_td2_das (i):   Timing of first UREA top dressing (in days after 
sowing/transplanting)

-	td2_amt_npks (d) :    Enter NPKS amount applied at first top dressing in KG
-	fert_npks_td2_das (i):   Timing of first NPKS top dressing (in days after 
sowing/transplanting)

-	td2_amt_mop (d) :    Enter MOP amount applied at first top dressing in KG
-	fert_mop_td2_das (i):   Timing of first MOP top dressing (in days after 
sowing/transplanting)
-	td2_amt_ssp (d) :    Enter SSP amount applied at first top dressing in KG
-	fert_ssp_td2_das (i):   Timing of first SSP top dressing (in days after 
sowing/transplanting)

-	td2_amt_tsp (d) :    Enter TSP amount applied at first top dressing in KG
-	fert_tsp_td2_das (i):   Timing of first TSP top dressing (in days after 
sowing/transplanting)

-	td2_amt_znso4 (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
-	fert_znso4_td2_das (i):   Timing of first Zinc Sulphate top dressing (in days after 
sowing/transplanting)

-	td2_amt_gypsum (d) :    Enter GYPSUM amount applied at first top dressing in KG
-	fert_gypsum_td2_das (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)

-	td2_amt_boron (d) :    Enter Boron amount applied at first top dressing in KG
-	fert_borom_td2_das (i):   Timing of first Boron top dressing (in days after 
sowing/transplanting)

-	td2_oth_name : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
-	td2_amt_oth (d) :    Enter TSP amount applied at first top dressing in KG
-	fert_oth_td2_das (i):   Timing of first TSP top dressing (in days after 
sowing/transplanting)
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>


<b>Third top dressing </b>
-	td3_fert_applied (m):	Select the fertilizer(s) applied at third top dressing for ${crop_name} 

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,Other (e.g. Liquid fertilizers),None

-	td3_amt_dap (d) :    Enter DAP amount applied at first top dressing in KG
-	fert_dap_td3_das:    Timing of first DAP top dressing (in days after sowing/transplanting)

-	td3_amt_npk (d) :    Enter NPK amount applied at first top dressing in KG
-	fert_npk_td3_das (i):   Timing of first NPK top dressing (in days after 
sowing/transplanting)

-	td3_amt_urea (d) :    Enter UREA amount applied at first top dressing in KG
-	fert_urea_td3_das (i):   Timing of first UREA top dressing (in days after 
sowing/transplanting)


-	td3_amt_npks (d) :    Enter NPKS amount applied at first top dressing in KG
-	fert_npks_td3_das (i):   Timing of first NPKS top dressing (in days after 
sowing/transplanting)

-	td3_amt_mop (d) :    Enter MOP amount applied at first top dressing in KG
-	fert_mop_td3_das (i):   Timing of first MOP top dressing (in days after 
sowing/transplanting)
-	td3_amt_ssp (d) :    Enter SSP amount applied at first top dressing in KG
-	fert_ssp_td3_das (i):   Timing of first SSP top dressing (in days after 
sowing/transplanting)

-	td3_amt_tsp (d) :    Enter TSP amount applied at first top dressing in KG
-	fert_tsp_td3_das (i):   Timing of first TSP top dressing (in days after 
sowing/transplanting)

-	td3_amt_znso4 (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
-	fert_znso4_td3_das (i):   Timing of first Zinc Sulphate top dressing (in days after 
sowing/transplanting)

-	td3_amt_gypsum (d) :    Enter GYPSUM amount applied at first top dressing in KG
-	fert_gypsum_td3_das (i):   Timing of first GYPSUM top dressing (in days after 
sowing/transplanting)

-	td3_amt_boron (d) :    Enter Boron amount applied at first top dressing in KG
-	fert_borom_td3_das (i):   Timing of first Boron top dressing (in days after 
sowing/transplanting)

-	td3_oth_name : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
-	td3_amt_oth (d) :    Enter TSP amount applied at first top dressing in KG
-	fert_oth_td3_das (i):   Timing of first TSP top dressing (in days after 
sowing/transplanting)

-	total_dap_applied (a) : Total DAP applied by the farmer ( All the application amount in each stage is added )

        Calculation : coalesce(${amt_dap_basal},0)+coalesce(${td1_amt_dap},0)+coalesce(${td2_amt_dap},0)+coalesce(${td3_amt_dap},0)

-	total_npk_applied (a) : Total NPK applied:

        Calculation: coalesce(${amt_npk_basal},0)+coalesce(${td1_amt_npk},0)+coalesce(${td2_amt_npk},0)+coalesce(${td3_amt_npk},0)

-	total_urea_applied (a) : Total Urea applied

        Calculation: coalesce(${amt_urea_basal},0)+coalesce(${td1_amt_urea},0)+coalesce(${td2_amt_urea},0)+coalesce(${td3_amt_npk},0)

-	total_npks_applied (a): Total NPKS applied
        
        Calculation : coalesce(${amt_npks_basal},0)+coalesce(${td1_amt_npks},0)+coalesce(${td2_amt_npks},0)+coalesce(${td3_amt_npks},0)

-	total_mop_applied

        Calculation: coalesce(${amt_mop_basal},0)+coalesce(${td1_amt_mop},0)+coalesce(${td2_amt_mop},0)+coalesce(${td3_amt_mop},0)
-	total_ssp_applied

        Calculation: coalesce(${amt_ssp_basal},0)+coalesce(${td1_amt_ssp},0)+coalesce(${td2_amt_ssp},0)+coalesce(${td3_amt_ssp},0)

-	total_tsp_applied

        Calculation : coalesce(${amt_tsp_basal},0)+coalesce(${td1_amt_tsp},0)+coalesce(${td2_amt_tsp},0)+coalesce(${td3_amt_tsp},0)

-	total_znso4_applied

        Calculation: coalesce(${amt_znso4_basal},0)+coalesce(${td1_amt_znso4},0)+coalesce(${td2_amt_znso4},0)+coalesce(${td3_amt_znso4},0)

-	total_gypsum_applied

        Calculation: coalesce(${amt_gypsum_basal},0)+coalesce(${td1_amt_gypsum},0)+coalesce(${td2_amt_gypsum},0)+coalesce(${td3_amt_gypsum},0)

-	total_boron_applied

        Calculation: coalesce(${amt_boron_basal},0)+coalesce(${td1_amt_boron},0)+coalesce(${td2_amt_boron},0)+coalesce(${td3_amt_boron},0)

•	grade_N (d): Select the grade of Nitrogen in NPK/NPKS mixture applied in ${surveyed_plot}__${llu} plot in KG

•	grade_P	Select the grade of Phosphorous in NPK/NPKS mixture applied in 
${surveyed_plot}__${llu} plot in KG

•	grade_K: Select the grade of Potassium in NPK/NPKS mixture applied in ${surveyed_plot}__${llu} plot in KG

•	grade_S: Select the grade of Sulphur in NPK/NPKS mixture applied in ${surveyed_plot}__${llu} plot in KG

<div class = 'alert'>
Note:  Multiple notes are shown for the enumerators to check all of their entries to verify if the entries are correct. All the application from basal, TD1, TD2, TD3 and the total amount applied for the fertilizers are displayed on the screen for the enumerators to recheck their entries and ensure all the entries are correct. 
</div>

•	n_rate(a) : Nitrogen rate calculated based on the input data 

        Calculate: round((((coalesce(${total_dap_applied},0) * (.18)) + (coalesce(${total_urea_applied},0) * (.46)) + ((coalesce(${total_npk_applied},0) + coalesce(${total_npks_applied},0))* (coalesce(${grade_N},0) div 100))) div (${cropLarestAreaAcre})) * 2.5,0)
 

•	p_rate	(a): P rate calculated based on the input data 

        Calculate: 	
        round((((coalesce(${total_dap_applied},0)* (.46)) + (coalesce(${total_ssp_applied},0)* (.16)) + ((coalesce(${total_npk_applied},0)+  coalesce(${total_npks_applied},0))* (coalesce(${grade_P},0) div 100)) +  (coalesce(${total_tsp_applied},0) * (.45))) div (${cropLarestAreaAcre}))* 2.5,0)

•	k_rate (a) : K Rate calculated based on the input data		

        Calculate: round((((coalesce(${total_mop_applied},0)*(.60)) + ((coalesce(${total_npk_applied},0)+ coalesce(${total_npks_applied},0)) * (coalesce(${grade_K},0) div 100))) div (${cropLarestAreaAcre}))* 2.5,0)

•	dap_price (d) : DAP price per kg

        Relevant : If the fertilizers are selected in any of the application , and country is Nepal
•	npk_price (d) : NPK price per kg

        Relevant : If the fertilizers are selected in any of the application and country is Nepal

•	urea_price (d): Urea price per kg

        Relevant : If the fertilizers are selected in any of the application and country is Nepal

•	mop_price (d) : Price of Mop per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

•	znso4_price (d) : Zinc sulphate price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

•	gypsum_price (d) : Gypsum price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal


•	boron_price (d) : Boron price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

•	npks_price (d): Price of NPKS per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal
 
•	ssp_price (d) : Price of SSP per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

•	tsp_price (d): Price of TSP per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal 

•	fert_info_source (m) : What is your source of information on fertilizer/micronutrient use

        choices:        

•	source_dap(s) : Source of purchase of DAP

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

•	source_npk(s) : Source of purchase of NPK product

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 



•	source_urea (s): Source of purchase of Urea

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

•	source_znso4(s) Source of purchase of Gypsum

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

•	source_boron (s): Source of purchase of Boron

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

•	fert_timely_available(s): Is fertilizer/micronutrients generally available on time

        Choices: Yes, No

•	avg_delay_chem_fert (s): If ‘no’ Average delay in fertilizer availability in weeks 

        Relevant : If no, fert_timely_available
        Choices: 1 – 10 

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables.
 </div>

 </div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
        **Irrigation Module**
      </button></h2>
<div id="collapseTen" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">


•	access_to_irrgation (s): Do you have access to irrigation for the largest ${surveyed_plot}__${llu} plot of ${crop_name}?	

        Choices: Yes, No

•	irrigation_done (s)	Did you irrigate your largest [${surveyed_plot}__${llu}] ${crop_name} plot?	

        Choices: Yes, No

•	source_of_irrigation (m): Source of irrigation for ${surveyed_plot}__${llu} plot for ${crop_name} (Select all that apply)	

        Choices: River,Canal,Pond/Tank,Shallow TubeWell,Deep TubeWell
        Relevant : If irrigation_done was Yes. 

•	application_stage (m)	At what stage was irrigation applied in ${surveyed_plot}__${llu} plot for ${crop_name}? (Select all that apply)
	
        Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
        Relevant : If irrigation_done was Yes. 

•	irrigation_times (s) : Number of irrigations applied after crop establishment in ${surveyed_plot}__${llu} plot for ${crop_name} (Select one)	

        Choices: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,
        29,30
        Relevant : If irrigation_done was Yes, and source_of_irrigation was not canal. 

•	irrigation_decision_factor (m): How do you decide when to irrigate the ${surveyed_plot}__${llu}  for ${crop_name}? (Select all that apply)

        Relevant : If the number of irrigation done was more than 0
        Choices: Crop Growth Stages, Soil dryness/cracking,Disappearance of flood water,Visible crop stress
		
•	constraint_factor (m): If ${crop_name} was not irrigated when required, why? (Select all that apply)	

        Choices: Expensive,Sufficient Rainfall,Irrigation not required,Water not available
        when required,Pump/Tubewell not available when required,Other
        Relevant : If irrigation_done was no

•	tubewell_depth (d) : Depth of tubewell in FEET used to irrigate ${surveyed_plot}__${llu}  plot

        Relevant: if source_of_irrigation was ShallowTubeWell or source_of_irrigation was DeepTubeWell
	
•	pump_use (s)	Did ${name} use pump to irrigate ${surveyed_plot}__${llu}  plot?	

        Choices: Yes,No
        Relevant: If irrigation_done was yes

•	pump_energy_src (s): Energy source for the pump	

        Choices: Electricity,Diesel,Both electricity and diesel
        Relevant: If pump_use was yes

•	pump_hp (s): Select the Horsepower of the pump	

        Choices: 0 to 1 HP,>1 to 2 HP,>2 to 5 HP,5-10 HP,10-20 HP,20-30 HP,30-40 HP,>40 HP
        Relevant: If pump_use was yes

•	lay_flat_pipe (s) : Did you use lay ‚Äì flat pipe to irrigate the ${surveyed_plot}__${llu}  plot?	

        Choices: Yes,No
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>
</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEleven" aria-expanded="false" aria-controls="collapseEleven">
        **Production Constraint Module**
      </button></h2>
<div id="collapseEleven" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">



•	face_drought (s) : Did your ${crop_name} crop face drought stress? (in ${surveyed_plot}__${llu})	

        Choices: Yes,No

•	drought_growth_stage (m): In which growth stage(s) did drought affect the crop? (in ${surveyed_plot}__${llu}) (Select all that apply)	

Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
Relevant: If faces drought 

•	flood_stress(s):  Did your ${crop_name} crop face flood stress? (in ${surveyed_plot}__${llu})

        Choices: Yes,No

•	flood_growth_stage (m):  In which growth stage(s) did flood affect the crop? (in ${surveyed_plot}__${llu}) (Select all that apply)	

        Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
        Relevant: if flood stress was yes

•	insecticide_applied(s): Were insecticides applied in the largest [${surveyed_plot}__${llu}] ${crop_name}?

        Choices: Yes,No

•	insecticide_name (t)	: If yes, name of insecticides	

        Relevant: If insectice_applied was yes

•	insecticide_app_method (m) : Method of Insecticide application	

        Choices: Irrigation Applied,Soil Applied,Canopy Applied (Foiler spray)

•	pesticide_applied (s): Were pesticides applied in ${surveyed_plot}__${llu} for disease control for ${crop_name}?	

        Choices: Yes,No

•	pesticide_name (t): If yes, name of pesticides	

•	pesticide_app_method (m): Method of Pesticide application	

        Choices: Seed Treatment,Soil Applied,Canopy Applied (Foiler spray)

•	lodging_perc	Percentage of crop that lodged (%) in ${surveyed_plot}__${llu}	

        Choices: 0,5,10,20,30,40,50,60,70,80,90,100
<div class = 'alert' >
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>
 
</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTweleve" aria-expanded="false" aria-controls="collapseTweleve">
        **Weed pest control Module**
      </button></h2>
<div id="collapseTweleve" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">



•	herbicide_applied (s): Did you apply herbicide for ${crop_name}?	
        
        Choices: Yes,No

•	herbicide_times_applied	How many times did you apply herbicide in ${surveyed_plot}__${llu}?	

        Choices: 1,2,3
        Relevant: herbicide_applied is yes

•	herbicide_type (s): Type of herbicide applied for ${crop_name}	

        Choices: Pre-emergence,Post-emergence,Both
        Relevant: herbicide_applied is yes

•	herbicide_name.1 (t)	Name of herbicide for first application in ${surveyed_plot}__${llu} plot	

•	herbicide_timing_das.1 (d)	Timing of first herbicide application (in days after sowing/transplanting) plot	
        
        Relevant: If herbicide applied times is more than 0

•	herbicide_name.2 (t)	Name of herbicide for first application in ${surveyed_plot}__${llu} plot	(t)

•	herbicide_timing_das.2 (d)	Timing of first herbicide application (in days after sowing/transplanting) plot	
        
        Relevant: If herbicide applied times is more than 0

•	herbicide_name.3 (t)	Name of herbicide for first application in ${surveyed_plot}__${llu} plot	

•	herbicide_timing_das.3 (d)	Timing of first herbicide application (in days after sowing/transplanting) plot
	
        Relevant: If herbicide applied times is more than 0

•	manual_weeding_times (s): How many times did you do manual weeding in ${surveyed_plot}__${llu}?	

        Choices: 0,1,2,3

•	manual_weeding_das.1 (i)	Time of first manual weeding ( days after crop establishment / sowing in ${surveyed_plot}__${llu} plot)	

        Relevant: Manual weeding times is 1

•	manual_weeding_das.2 (i)	Time of first manual weeding ( days after crop establishment / sowing in ${surveyed_plot}__${llu} plot)

        Relevant: Manual weeding times is 2

•	manual_weeding_das.3 (i)	Time of first manual weeding ( days after crop establishment / sowing in ${surveyed_plot}__${llu} plot)	

        Relevant: Manual weeding times is 3

•	all_weeds (m): 	Identify top ten weeds for surveyed crop in the largest plot based on severity, occurrence and damage in ${surveyed_plot}__${llu} 
	
	Chocies: List of weeds

•	severity_1_weed (s): Rank the first weed based on severity of damage in ${surveyed_plot}__${llu}

•	severity_2_weed(s): Rank the second weed based on severity of damage in ${surveyed_plot}__${llu}

•	severity_3_weed(s) : Rank the third weed based on severity of damage in ${surveyed_plot}__${llu}

•	severity_4_weed (s): Rank the fourth weed based on severity of damage in ${surveyed_plot}__${llu}

•	severity_5_weed (s): : Rank the fifth weed based on severity of damage in ${surveyed_plot}__${llu}

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>


</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThirteen" aria-expanded="false" aria-controls="collapseThirteen">
        **Harvest Module**
      </button></h2>
<div id="collapseThirteen" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">

•	harvest_date (d):  Harvest date of ${crop_name} in ${surveyed_plot}__${llu}	

•	harvest_days (a) : Harvest days calculated

        Calculation : date(${harvest_date_calc}) - date(${seeding_sowing_trans_date})	

•	harvest_method (s) : Harvesting method of ${crop_name} in ${surveyed_plot}__${llu}	

        Choices: Combine, Reaper, Manual

•	crop_residue (s):  ${crop_name} crop residue was-	

        Choices: Removed from the field, Retained in the field,B urnt in the field

•	threshing_method (s) : If reaper or manual, threshing method in ${surveyed_plot}__${llu}	

        Choices: Manual,Machine
        Relevant: if reaper or manual threshing  in harvest method

•	total_production_lp (d): 	Total ${crop_name} yield from ${surveyed_plot}__${llu} in QUINTAL (self reported)
	
•	qunital_per_acre (a) :	Qunital per acre calculated based on previous entries

        Calculation: round(${total_production_lp} div ${cropLarestAreaAcre}, 2)

•	ton_per_hc (a):

	Calculation: round((${qunital_per_acre} * 2.5) div 10, 2)
	
•	avg_farm_gate_price (d): What was the farm gate price per quintal for ${crop_name} at the time of harvest? (Rs / Taka per quintal)	

•	production_compare_5_years (s) : How is the production compared of ${crop_name} to the last five years?	

        Choices: Higher than average,Average,Below average

<div class = 'important'>
Note: The harvest days are calculated and shown to the data collector to ensure the data is logical </div><br>

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. This module also requires “site_characterstic_crop_establishment” module. 
</div>
</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse14" aria-expanded="false" aria-controls="collapse14">
        **Household economics and market Module**
      </button></h2>
<div id="collapse14" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
 

•	total_members (s) : Number of household members (s) 

        Choices: 1,2,3,4,5,6,7,8,9,10,11,12

•	members_in_ag (s): Number of household members engaged in agriculture		

        Choices: 1,2,3,4,5,6,7,8,9,10,11,12

•	ruminants (s): How many ruminants (Cow(s) / Buffalo(es) ) are maintained by you?	

        Choices: 0,1,2,3,4,5,6,7,8,9,10,11,12

•	market_sale_share (s) : Share of total ${crop_name} crop production sold to market (%)	

        Choices: 0,5,10,20,30,40,50,60,70,80,90,100

•	agri_income_importance (s) : How important is agriculture to your household income?	

        Choices: Low,Medium,High

•	crop_income_importance (s) : How important is ${crop_name} crop to your household income?	

        Choices: Low,Medium,High

•	current_crop_sellingprice (d) : Current selling price for ${crop_name} crop sold to market? (Rs/ quintal)	

•	crop_avg_sellingprice (d) : Average selling price for ${crop_name} crop sold to market (Rs / quintal) (average over the last five years)	

<div class = 'alert'>Note: The module  borrows the crop name (crop_name) variable from the “Respondent” module 
</div>
</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse15" aria-expanded="false" aria-controls="collapse15">
        **Tracking technology change Module**
      </button></h2>
<div id="collapse15" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">




•	new_practices	 (m) : Did you use new practices for surveyed crop management this season? (Select all that apply)	

        Choices: Nutrient Management,Crop establishment,Variety replacement,Irrigation management,Weed management,Other,None

•	coc_consent	Would you like to share details for cost of cultivation?	

        Choices: Yes,No

</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse16" aria-expanded="false" aria-controls="collapse16">
        **Cost of Cultivation Module**
      </button></h2>
<div id="collapse16" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">


•	amount_paid_labor_land_prep (d) : Amount paid to labors engaged in land preperation of your ${surveyed_plot}__${llu}  plot for ${crop_name} plot

•	amount_paid_hiring_machine_land_prep (d):  Amount paid/incurred for hiring/using machine in land preperation of your ${surveyed_plot}__${llu}  plot for ${crop_name} plot

•	land_prep_cost_calc	(a):  Land preparation cost calculated by the system

        Calculation : coalesce(${amount_paid_labor_land_prep},0)+ coalesce(${amount_paid_hiring_machine_land_prep},0)

•	cost_of_seed (d): Cost of seed for your ${surveyed_plot}__${llu}  plot for ${crop_name} plot

•	amount_paid_broadcasting (d): Amount paid to labors for broadcasting seed on your ${surveyed_plot}__${llu}  plot for ${crop_name} plot

•	amunt_paid_machine_seeing (d) : Amount paid/incurred for hiring/using machine for seeding on your ${surveyed_plot}__${llu}  plot for ${crop_name} plot

•	cost_raising_buying_nursery (d): Cost incurred for raising/buying nursery for your ${surveyed_plot}__${llu}  plot for ${crop_name} plot

•	total_cost_seedling_trasnplanting (d): Total labor/machine cost incurred for seedling transplanting on your ${surveyed_plot}__${llu}  plot for ${crop_name} plot


•	crop_estab_cost_calc	(a): Crop establishment cost calculated

        Calculation : coalesce(${cost_of_seed},0) +coalesce(${amount_paid_broadcasting},0) + coalesce(${amunt_paid_machine_seeing},0)+ coalesce(${cost_raising_buying_nursery},0) + coalesce(${total_cost_seedling_trasnplanting},0)

•	fym_price_quintal (d):  FYM price per quintal

•	dap_price_kg (d): DAP price per kg

•	npk_price_kg (d): NPK price per kg

•	urea_price_kg (d): Urea price per kg

•	mop_price_kg	 (d) : MoP price per kg

•	znso4_price_kg (d):	Zinc Sulphate price per kg

•	gypsum_price_kg (d): 	Gypsum price per kg

•	boron_price_kg (d): 	Boron price per kg

•	npks_price_kg (d) : NPKS price per kg

•	ssp_price_kg (d) : SSP price per kg

•	tsp_price_kg (d) : TSP price per kg

•	other_chem_fert_price_kg (d): 	Total Cost for Other Fertilizer

•	labor_cost_basal_fert_app (d):  Labor cost incurred for basal fertilizer application on your ${surveyed_plot}__${llu}  plot for ${crop_name}

        Relevant: If mineral fertilizer (apply_minfert) was applied and chemical fertilizer (chem_fert_applied) from fertilizer section was applied

•	labor_cost_td1 (d) : Labor cost incurred for first top dressing on your ${surveyed_plot}__${llu}  plot for ${crop_name}

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 1 (td1_fert_applied) from fertilizer section was applied

•	labor_cost_td2 (d):  Labor cost incurred for second top dressing on your ${surveyed_plot}__${llu}  plot for ${crop_name}

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 2 (td2_fert_applied) from fertilizer section was applied


•	labor_cost_td3 (d):  Labor cost incurred for third top dressing on your ${surveyed_plot}__${llu}  plot for ${crop_name}

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 3 (td3_fert_applied) from fertilizer section was applied

•	total_fertilizer_cost_calc (a) : Total cost of fertilizer application (labor  cost+ fertilizer price * amount of fertilizer applied) 

        Calculation : 
        ((coalesce(${fym_price_quintal},0) * coalesce(${fym_applied_qty},0)) + (coalesce(${urea_price_kg},0) * coalesce(${total_urea_applied},0)) + (coalesce(${dap_price_kg},0) * coalesce(${total_dap_applied},0))  + (coalesce(${mop_price_kg},0) * coalesce(${total_mop_applied},0)) +  (coalesce(${npk_price_kg},0) * coalesce(${total_npk_applied},0) ) +  (coalesce(${znso4_price_kg},0) * coalesce(${total_znso4_applied},0))+ (coalesce(${gypsum_price_kg},0) * coalesce(${total_gypsum_applied},0)) + (coalesce(${boron_price_kg},0) * coalesce(${total_boron_applied},0)) + (coalesce(${npks_price_kg},0) * coalesce(${total_npks_applied},0)) + (coalesce(${ssp_price_kg},0) * coalesce(${total_ssp_applied},0)) + (coalesce(${tsp_price_kg},0) * coalesce(${total_tsp_applied},0)) + coalesce(${labor_cost_basal_fert_app},0) + coalesce(${labor_cost_td1},0) + coalesce(${labor_cost_td2},0)+ coalesce(${labor_cost_td3},0) + coalesce(${other_chem_fert_price_kg},0))
 

•	avg_one_irrigation_cost (d) : Average cost incurred for applying one irrigation in your ${surveyed_plot}__${llu}  plot for ${crop_name}

•	irrigation_cost_calc (a) : Irrigation Expenses calculated irrigation times * irrigation cost

	Calculation: round((coalesce(${irrigation_times},0) * 			 
		         coalesce(${avg_one_irrigation_cost},0)), 

•	cost_manual_weeding (d): Cost incurred in manual weeding(s) for your ${surveyed_plot}__${llu}  plot for ${crop_name}

	Relevant: If manual weeding is more than 0

•	cost_herbicide_purchased (d):Cost of herbicide(s) purchased for your ${surveyed_plot}__${llu}  plot for ${crop_name}

	Relevant: If herbicide applied times is greater than 0

	
•	cost_herbicide_first_spray(d):  Sparying cost for first spray of herbicide in your ${surveyed_plot}__${llu}  plot for ${crop_name}

	Relevant: If herbicide applied times is 1


•	cost_herbicide_second_spray (d):  Sparying cost for second spray of herbicide in your ${surveyed_plot}__${llu}  plot for ${crop_name}

	Relevant: If herbicide applied times is 2

	
•	cost_herbicide_third_spray (d): Sparying cost for third spray of herbicide in your ${surveyed_plot}__${llu}  plot for ${crop_name}

	Relevant: If herbicide applied times is 3


•	weeding_cost_calc (a):  Cost of manual weeding + cost of herbicide and sum of cost of all herbicide sprays

	Calculation : coalesce(${cost_manual_weeding},0)+ 			
		          coalesce(${cost_herbicide_purchased},0) + 			  	
		          coalesce(${cost_herbicide_first_spray},0) + 
		         coalesce(${cost_herbicide_second_spray},0) + 
		         coalesce(${cost_herbicide_third_spray},0)


•	cost_pesticide(d) : Cost of pesticide(s) purchased for your ${surveyed_plot}__${llu}  plot for ${crop_name}
	
	Relevant: If pesticide is applied

•	cost_spraying_pesticide (d) :	Total sparying cost of pesticide(s) in your ${surveyed_plot}__${llu}  plot for ${crop_name}

	Relevant: If pesticide is applied

•	pest_mgmt_cost_calc (a): Cost of pest management (Cost of pesticide + cost of spraying pesticide) 

		Calculation: coalesce(${cost_pesticide},0)+ 
			         coalesce(${cost_spraying_pesticide},0)

•	labor_cost_harvesting (d):  Total labour cost for harvesting of ${crop_name} in your  ${surveyed_plot}__${llu} plot

	Relevant:  If harvest method is manual or reaper

•	machine_cost_harvesting (d):  Total machine cost for harvesting of ${crop_name} in your  ${surveyed_plot}__${llu} plot

	Relevant: If harvesting method is Combine

•	labor_cost_threshing (d) : Total labour cost for threshing of ${crop_name} harvested from your  ${surveyed_plot}__${llu} plot

	Relevant: If threshing method is manual

•	machine_cost_threshing (d)  : Total machine cost for threshing of ${crop_name} harvested from your  ${surveyed_plot}__${llu} plot

	Relevant: If threshing method is machine

•	harvest_cost_calc (a):  Total harvesting cost – sum of labor cost of harvesting, machine cost of harvesting, labor cost of thresthing ,machin cost of threshing)

	Calculation: coalesce(${labor_cost_harvesting},0)+ 
			        coalesce(${machine_cost_harvesting},0)+ 
			       coalesce(${labor_cost_threshing},0) + 
			       coalesce(${machine_cost_threshing},0)
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. This module also uses site charactestic and crop establishment module. Additionally, it uses Fertility Management, Detailed fertility management, Irrigation management, Production constraint, Weed and Pest control, weed identification, Harvest modules as well for calculation 
</div>

</div></div></div>


<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse17" aria-expanded="false" aria-controls="collapse17">
        **Tracking GHG Emission Module**
      </button></h2>
<div id="collapse17" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
 


•	flood_frequency (s) : What is the frequency of flooding of the largest [${surveyed_plot}__${llu}] ${crop_name} plot in a given season	

	Choices: 1 day,2 days,3 days,4 days,5 days,6 days,7 days,1 Week,2 Weeks,
		3 Weeks,4 Weeks

•	number_passespuddling (s):	What is the average number of passes for Puddling?	

	Choices : 1,2,3,4,5

•	number_passestyne (s): What is the average number of passes for Tyne Cultivator?	

	Choices: 1,2,3,4,5

•	number_passesdisc (s): What is the average number of passes for Disc Harrow?	

	Chocies: 1,2,3,4,5

•	number_passes4wt (s): What is the average number of passes for Four Wheel Tractor Rotavator?	

	Choices: 1,2,3,4,5

•	number_passes2wt (s):What is the average number of passes for Two Wheel Tractor Rotavator?	

	Choices: 1,2,3,4,5

•	number_passesbullock (s): What is the average number of passes for Bullock drawn plough?	

	Choices: 1,2,3,4,5

•	perc_residue_removed (s): 	What is the percentage of residue removed by tyne cultivation?	

	Choices: 0,5,10,20,30,40,50,60,70,80,90,100

•	fym_used_how (m):  : How is FYM used on your farm?	

	Choices: Soil Amendment,Fuel,Sale,Waste,Other

•	perc_soil_amendement (s):	What percentage of your FYM is used as a soil amendment?	

	Choices:  0,5,10,20,30,40,50,60,70,80,90,100

•	rice_standing_water_early_growth (d): For how many days was there standing water in the largest [${surveyed_plot}__${llu}] ${crop_name} plot during early vegetative growth stage?	

•	rice_standing_water_mid_growth (d):  For how many days was there standing water in the largest [${surveyed_plot}__${llu}] ${crop_name} plot during mid-vegetative growth stage?	


•	rice_standing_water_flowering (d): 	For how many days was there standing water in the largest [${surveyed_plot}__${llu}] ${crop_name} plot during  flowering growth stage?	

•	rice_standing_water_grain_filling (d): For how many days was there standing water in the largest [${surveyed_plot}__${llu}] ${crop_name} plot during grain filling growth stage?

<div class = 'alert'>
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module.
 </div>
</div></div></div>


<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse18" aria-expanded="false" aria-controls="collapse18">
        **Geolocation Module**
      </button></h2>
<div id="collapse18" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">


•	longitude_latitude (geopoint) : GPS from the center of the ${surveyed_plot}__${llu}  plot for ${crop_name}.

<div class = 'alert'>
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. 
</div>
</div></div></div>






