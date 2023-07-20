---
layout: page
title: Modules
has_children: true
permalink: /modules/
description: Here's an overview of different modules that help you gain insight of what inside the LCAS datasets. 
---

# Module Documentation

This page provides an overview of the different LCAS modules. Each modules aims to elicit key information about drivers and outcomes of the surveyed agricultural system.

 [Download the Survey templaets (with all modules) xlsxform](Modules/Standard%20Template.xlsx)


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
 Your age is . The value of age will change as per the response of the respondent and can be viewed during data collection.

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

[Download the Meta-Survey Module xlsxform](Modules/df_survey.xlsx)


1.	device_id (a): The id of the device used to collect the survey data.
2.	start (a): The start time of the survey which depends on the clock that is on the device
3.	end (a): The end time of the survey which depends on the clock on the device.
4.	collection_date (a): The date on which the survey data is being collected.
5.	wc (n): This note is for the enumerators to read out aloud to the respondents. It contains the information about the survey.
6.	consentDisclaimer (n): This note is for the enumerators to read out aloud to the respondents so that they are made aware of the use of the data of the survey and data privacy details.
7.	consent (s): This is a yes/no question to get the consent of the respondent to take part in the survey. 
                Required: Yes, this is a mandatory field for the survey for continuing the survey
                Choices: Yes, No



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

 [Download the Location Module xlsxform](Modules/df_location.xlsx)

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

[Download the Crop Cut Module xlsxform](Modules/df_cropcut.xlsx) 

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

[Download the Module xlsxform](Modules/df_respondent.xlsx)

1.	name (t): The name of the respondent 

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


</div>


</div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        **Land Unit and Ownership**
      </button></h2>
<div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">
The module contains the details about the land unit used and land ownership details for a respondent.

[Download the Land Units and Land Ownership Module xlsxform](Modules/df_landunit.xlsx)


1.	llu (s): local land unit used by respondent referring to the largest plot 
 		
        Choices: Acre, Bigha, Decimal, Dhur, Kattha, Guntha

2.	local_to_acre (d): How many local land unit  are in 1 acre?

3.	total_cultivated_land (d): Total cultivated land (owned and leased) in this season in the local land unit 

4.	total_crop_cult_area (d): Total crop  cultivated land  (owned and leased) in this season in local land unit. 

        Constraint: The system checks to see if crop cultivated area is lesser than the total cultivated land

5.	surveyed_plot (d): Largest  plot (owned or leased) in this season in 

        Constraint: The system checks to see if the surveyed plot response is lesser than total crop cultivated area. 

6.	cropLarestAreaAcre (a): This field calculates and converts the surveyed plot to acre as per the local to acre conversion. This data in the field is not shown anywhere and need to be displayed using a note. 

        Calculation: surveyed plot / local to area (conversion unit). 
        The output is then rounded to 3 decimal digits

7.	ownership(s): Type of ownership of the largest  in local land unit.   plot?

        Choices: Owned, Leased-in, Share Cropping

<div class = 'alert'>
The entire “Land Unit and Ownership” section has been designed to fit in one page during data collection using phones or tablets. The “field-list” appearance has been used to get the desired user interface </div>

<br>
<div class = 'important'>Note: The “Land Unit and Ownership” module is dependent on the Respondent module. The crop name (crop_name) that is displayed in the data collection app borrows the variable from the “Respondent module”. Make sure to also include the crop name question for the form to work. </div>


</div>

</div>



</div></div>


<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
        **Site characteristics and crop establishment**
      </button></h2>
<div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">

This module contains questions about the survey plot and crop establishment

[Download the Site Characteristics and Crop Establishment Module xlsxform](Modules/df_site_char.xlsx)


1.	soil_texture (s): Soil texture of the largest  in local land unitplot

                
        Choices: Light, Medium, Heavy

2.	dry_field (s): At the end of the Kharif season, when is your largestplot dry enough to have access for Rabi crop?

        Choices: Before 3rd week of October, 3rd week of October, 
        4th week of October,1st week of November, 2nd week of November, 
        3rd week of November, 4th week of November, 
        1st week of December, 2nd week of December, 3rd week of December,
        4th week of December, After 4th week of December

3.	dry_field_five_year_avg (s): Over the last five years, at the end of the Kharif season, when is your largestplot dry enough to have access for Rabi crop?

        Choices: Before 3rd week of October, 3rd week of October, 4th week of October,
                1st week of November, 2nd week of November, 3rd week of November, 
                4th week of November, 1st week of December, 2nd week of December, 
                3rd week of December, 4th week of December, After 4th week of December

3.	recede_water (s):  After flooding/flood irrigation, how long does it take to recede water from your largestplot? 

        Choices: 1 day, 2 days, 3 days, 4 days, 5 days, 6 days, 7 days, 
                1 Week, 2 Weeks, 3 Weeks, 4 Weeks

5.	drainage_class	 (s): Drainage class of the largestplot.

        Choices: Upland, Medium land, Low land

6.	soil_perception (s): Farmer’s perception of soil quality on the plot of

        Choices: High, Medium, Low
 

7.	previous_crop (s): Previous major crop cultivated before  in

        Choices: Bajra, Banana, Blackgram, Caster, Chickpea (Gram), Chilli, 
                Cotton, Fallow,Greengram,GreenManure,Groundnut,IndianMustard,Jowar,
                Lentil, Maize,Mungbean,Other,PigeonPea,Pulses,Redgram,Rice,
                Soybean,Sugarcane,Sunflower, Turmeric, Vegetables, Mentha, Wheat

8.	third_crop_yesno (s): Have you grown any third crop on  plot

        Choices: Yes, No

9.	third_crop_name (s) : Select the third crop grown on  plot

        Choices: Bajra, Banana, Blackgram, Caster, Chickpea (Gram), Chilli, 
                Cotton, Fallow, Greengram,GreenManure,Groundnut,IndianMustard,Jowar,
                Lentil, Maize,Mungbean,Other,PigeonPea,Pulses,Redgram,Rice,
                Soybean,Sugarcane,Sunflower, Turmeric, Vegetables, Mentha,
                Wheat

10.	prev_crop_tillage (m) 	What was the tillage type for previous  crop in  plot? (select all that apply)

        Choices: Puddling (wet tillage) (NOT applicable for Wheat), 
                Disc harrow, Tyne cultivator, 4 wheel tractor rotavator,
                2 wheel tractor rotavator,Bullock drawn plough, 
                Strip tillage, No tillage, Other

11.	prev_crop_harvest_date (da)	Enter date of previous  crop harvest in  plot
12.	prev_crop_harvest_method (s) : What was the method of previous crop harvesting?

        Choices: Combine, Reaper, Manual

13.	prev_crop_residue (s):   crop residue was

        Choices: Removed from the field, Retained in the field, 
                Burnt in the field

14.	variety_name (s):  Variety name of 

        Choices: Lists out different varieties of the rice to choose from 

15.	variety_name_other (t): Enter name of other  variety

        Relevant: If variety name is selected as “other” the enumerator gets 
                to input the rice variety 
16.	variety_type (s): What is the variety type of ?

        Choices: Improved, Hybrid, Other

17.	ce_method (s):   establishment method in the largestplot

        Choices: Manual transplanted (Random), Manual transplanted in line, 
                Directly sown by broadcast method, Directly sown by seed drill, 
                Directly sown followed by busheling, Machine transplanted, 
                Line sowing after tillage, Broadcasting, Zero tillage, Broadcasting, 
                Manual line sowing, Seed drill, Other

18.	ce_irrigation (s): Did you apply irrigation at the time of crop establishment in the largestplot?

        Choices: Yes, No

19.	land_prep_method (m): Land preparation method in the largestplot (select all that apply)

        Choices: Puddling (Wet tillage), Tyne cultivator, Disc harrow,
                rotavator, 2 wheel tractor, 4 wheel tractor, Bullock drawn plough, 
                Strip tillage, No tillage

20.	rotavator_till_number_of_years (s): 	If tillage by rotavator, number of years of continuous use inplot

        Choices: 1,2,3,4,5,6,7,8,9,10
                
        Relevant: If land preparation method  was Four Wheel Tractor Rotavator
                or Two Wheel Tractor rotavator

21.	date_nursery_estd (da) : If rice transplanted, date of nursery establishment

        Relevant: Question only shows up if the crop selected is rice, 
                           and the crop establishment method is Transplanted 
                
        Constraint: The form does not accept any future dates 

22.	planting_date_dsr (da): Date of seeding / transplanting / direct sowing (if DSR rice) or
sowing (wheat)



<div class = 'alert'>Note: The date for previous crop harvest is displayed for the enumerator to correctly select DSR date which should be after the harvest date of the previous crop 
</div>
<br>

23.	seedling_age (c): This is a calculate field and it calculate the seedling age by :

	Calculation: transplanting date – nursery establishment date

<br>

24.	delay_reasons (m): If wheat planting was delayed past November 30 in this season, why? 

        Relevant: This question is displayed only for wheat and if the wheat 
                sowing date is after November 30. 

        Choices: Previous crop (e.g. rice) harvested late, Land too wet for ploughing,
                Non availability of tillage equipment, Non availability of seed, 
                No availability of fertilizers, Labor shortage, Lack of moisture at sowing, 
                Lack of funds, No delay, Other
<div class = 'important'>Note: Remember to change the “year” in the module to match the year in the relevant column.
</div> 

<br>

25.	delay_reason_others (t): Enter other reason in delay of sowing this season

        Relevant: If delay reasons is selected as other

26.	delay_common_reason (m): If wheat planting is commonly delayed past November 30th in most years, why? (Select all that apply)

        Relevant: This question is displayed only for wheat and if the wheat sowing 
                date is after November 30. 

        Choices: Previous crop (e.g. rice) harvested late,
                Land too wet for ploughing,Non availability of tillage equipment, 
                Non availability of seed, No availability of fertilizers,
                Labor shortage, Lack of moisture at sowing, 
                Lack of funds, No Delay


27.	delay_common_reason_oth (t): Enter other reason if wheat planting is commonly delayed past Nov 30th in most year.

        Relevant: If common delay reasons is selected as other



28.	nursery_determining_factor(m): What mostly determines the timing of rice nursery establishment? (Select all that apply)

        Relevant: Only for rice

        Choices: Calendar date, Arrival of pre-monsoon showers, 
                Irrigation water availability, Weather forecast information, 
                Practices of neighboring farmers, Seed availability, Other

29.	timing_determing_factor (m):  What mostly determines the timing of rice planting in the largest  plot? (Select all that apply)

        Relevant: Only for rice

        Choices: Calendar date, Seedling age, Arrival of rains, 
        Irrigation water availability, Labor availability

30.	seed_amount (d):  seed amount used for the largestplot in kg


31.	seed_source (s): What is the source of seed for  used for the largest  plot?

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

This module contains information about the general fertility management practices of the largest plot.

 [Download the General Fertility Management Module xlsxform](Modules/df_fert_mgmt.xlsx)

 
1.	shc_recommendation (s): :Are soil health card recommendations available for the largestplot?

	Choices: No, Yes and information used, Yes but information not used

2.	fym_applied (s):  Was Farm Yard Manure (FYM) applied in the largest  plot in last one year?

        Choices: Yes, No

3.	fym_no_applied (s): If no, What is your reason for not using FYM?

        Choices: Not Available,Used for fuel,Sold

4.	fym_applied_qty (d):	How much FYM in quintal is applied during each application in the largest plot?

        Relevant: Only if FYM was applied


5.	fym_applied_avg_five_year_times (s): Over the last five years, how many times FYM was applied in the largest plot?

        Relevant: Only if FYM was applied
                
        Choices: 0,1,2,3,4,5,6,7,8,9,10


6.	apply_minfert (s): Did you apply mineral fertilizer in the largest plot?

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


This module contains information about the general fertility management practices on the largest plot.

[Download the Detailed Fertility Management Module xlsxform](Modules/df_detail_fert.xlsx)


1. chem_fert_applied (m): Select the fertilizer(s) applied at planting (basal) for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,
                 Boron,Other (e.g. Liquid fertilizers),None

2. amt_dap_basal (d): DAP at planting (basal) in kg	
		 
	Relevant: Only if DAP is selected as chemical fertilizer applied

3. amt_npk_basal (d): NPK product (mixture fertilizer) at planting (basal) in kg	

	Relevant: Only if NPK is selected as chemical fertilizer applied


4. amt_urea_basal (d): Urea at planting (basal) in kg	

        Relevant: Only if Urea is selected as chemical fertilizer applied

5. amt_npks_basal (d): NPKS at planting (basal) in kg	

        Relevant: Only if NPKS is selected as chemical fertilizer applied


6. amt_mop_basal (d): MoP at planting (basal) in kg	

        Relevant: Only if MOP is selected as chemical fertilizer applied

7. amt_ssp_basal (d): SSP at planting (basal) in kg

        Relevant: Only if SSP is selected as chemical fertilizer applied
	
8. amt_tsp_basal	(d): TSP at planting (basal) in kg

        Relevant: Only if TSP is selected as chemical fertilizer applied
	
9. amt_znso4_basal (d): Zinc Sulphate at planting (basal) in kg

        Relevant: Only if Zinc sulphate is selected as chemical fertilizer applied
	

10. amt_gypsum_basal (d): Gypsum at planting (basal) in kg	

        Relevant: Only if Gypsum is selected as chemical fertilizer applied

11. amt_boron_basal (d): Boron at planting (basal) in kg

        Relevant: Only if Boron is selected as chemical fertilizer applied
	
12. other_chem_ferts (t): Enter name of other basal fertilizer applied	

        Relevant: Only if other chemical fertilizer is selected as chemical fertilizer applied

13. amt_other_chem_ferts (d): Total  applied in kg	

        Relevant: Only if other chemical fertilizer is selected as chemical fertilizer applied
 

<b>First top dressing</b>

14. td1_fert_applied (m):	Select the fertilizer(s) applied at first top dressing for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,
                 Other (e.g. Liquid fertilizers),None


15. td1_amt_dap (d) : Basal DAP applied:  kg\nEnter DAP amount applied at first top dressing in KG

16. fert_dap_td1_das (i) : Timing of first DAP top dressing (in days after sowing/transplanting)


17.	td1_amt_npk (d) :    Enter NPK amount applied at first top dressing in KG

18.	fert_npk_td1_das (i):   Timing of first NPK top dressing (in days after sowing/transplanting)
19.	td1_amt_urea (d) :    Enter UREA amount applied at first top dressing in KG
20.	fert_urea_td1_das (i):   Timing of first UREA top dressing (in days after sowing/transplanting)
21.	td1_amt_npks (d) :    Enter NPKS amount applied at first top dressing in KG
22.	fert_npks_td1_das (i):   Timing of first NPKS top dressing (in days after sowing/transplanting)
23.	td1_amt_mop (d) :    Enter MOP amount applied at first top dressing in KG
24.	fert_mop_td1_das (i):   Timing of first MOP top dressing (in days after sowing/transplanting)
25.	td1_amt_ssp (d) :    Enter SSP amount applied at first top dressing in KG
26.	fert_ssp_td1_das (i):   Timing of first SSP top dressing (in days after sowing/transplanting)
27.	td1_amt_tsp (d) :    Enter TSP amount applied at first top dressing in KG
28.	fert_tsp_td1_das (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
29.	td1_amt_znso4 (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
30.	fert_znso4_td1_das (i):   Timing of first Zinc Sulphate top dressing (in days after sowingtransplanting)
31.	td1_amt_gypsum (d) :    Enter GYPSUM amount applied at first top dressing in KG
32.	fert_gypsum_td1_das (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)
33.	td1_amt_boron (d) :    Enter Boron amount applied at first top dressing in KG
34.	fert_borom_td1_das (i):   Timing of first Boron top dressing (in days after sowing/transplanting)
35.	td1_oth_name : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
36.	td1_amt_oth (d) :    Enter TSP amount applied at first top dressing in KG
37.	fert_oth_td1_das (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>

<b>Second top dressing </b>

38.	td2_fert_applied (m):	Select the fertilizer(s) applied at second top dressing for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,Other (e.g. Liquid fertilizers),None

39.	td2_amt_dap (d) :    Enter DAP amount applied at first top dressing in KG
40.	fert_dap_td2_das:    Timing of first DAP top dressing (in days after sowing/transplanting)
41.	td2_amt_npk (d) :    Enter NPK amount applied at first top dressing in KG
42.	fert_npk_td2_das (i):   Timing of first NPK top dressing (in days after sowing/transplanting)
43.	td2_amt_urea (d) :    Enter UREA amount applied at first top dressing in KG
44.	fert_urea_td2_das (i):   Timing of first UREA top dressing (in days after sowing/transplanting)
45.	td2_amt_npks (d) :    Enter NPKS amount applied at first top dressing in KG
46.	fert_npks_td2_das (i):   Timing of first NPKS top dressing (in days after sowing/transplanting)
47.	td2_amt_mop (d) :    Enter MOP amount applied at first top dressing in KG
48.	fert_mop_td2_das (i):   Timing of first MOP top dressing (in days after sowing/transplanting)
49.	td2_amt_ssp (d) :    Enter SSP amount applied at first top dressing in KG
50.	fert_ssp_td2_das (i):   Timing of first SSP top dressing (in days after sowing/transplanting)
51.	td2_amt_tsp (d) :    Enter TSP amount applied at first top dressing in KG
52.	fert_tsp_td2_das (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
53.	td2_amt_znso4 (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
54.	fert_znso4_td2_das (i):   Timing of first Zinc Sulphate top dressing (in days after sowingtransplanting)
55.	td2_amt_gypsum (d) :    Enter GYPSUM amount applied at first top dressing in KG
56.	fert_gypsum_td2_das (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)
57.	td2_amt_boron (d) :    Enter Boron amount applied at first top dressing in KG
58.	fert_borom_td2_das (i):   Timing of first Boron top dressing (in days after sowing/transplanting)
59.	td2_oth_name : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
60.	td2_amt_oth (d) :    Enter TSP amount applied at first top dressing in KG
61.	fert_oth_td2_das (i):   Timing of first TSP top dressing (in days after sowing/transplanting)

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>


<b>Third top dressing </b>

62.	td3_fert_applied (m):	Select the fertilizer(s) applied at third top dressing for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,Other (e.g. Liquid fertilizers),None

63.	td3_amt_dap (d) :    Enter DAP amount applied at first top dressing in KG
64.	fert_dap_td3_das:    Timing of first DAP top dressing (in days after sowing/transplanting)
65.	td3_amt_npk (d) :    Enter NPK amount applied at first top dressing in KG
66.	fert_npk_td3_das (i):   Timing of first NPK top dressing (in days after sowing/transplanting)
67.	td3_amt_urea (d) :    Enter UREA amount applied at first top dressing in KG
68.	fert_urea_td3_das (i):   Timing of first UREA top dressing (in days after sowing/transplanting)
69.	td3_amt_npks (d) :    Enter NPKS amount applied at first top dressing in KG
70.	fert_npks_td3_das (i):   Timing of first NPKS top dressing (in days after sowing/transplanting)
71.	td3_amt_mop (d) :    Enter MOP amount applied at first top dressing in KG
72.	fert_mop_td3_das (i):   Timing of first MOP top dressing (in days after sowing/transplanting)
73.	td3_amt_ssp (d) :    Enter SSP amount applied at first top dressing in KG
74.	fert_ssp_td3_das (i):   Timing of first SSP top dressing (in days after sowing/transplanting)
75.	td3_amt_tsp (d) :    Enter TSP amount applied at first top dressing in KG
76.	fert_tsp_td3_das (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
77.	td3_amt_znso4 (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
78.	fert_znso4_td3_das (i):   Timing of first Zinc Sulphate top dressing (in days after sowingtransplanting)
79.	td3_amt_gypsum (d) :    Enter GYPSUM amount applied at first top dressing in KG
80.	fert_gypsum_td3_das (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)
81.	td3_amt_boron (d) :    Enter Boron amount applied at first top dressing in KG
82.	fert_borom_td3_das (i):   Timing of first Boron top dressing (in days after sowing/transplanting)
83.	td3_oth_name : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
84.	td3_amt_oth (d) :    Enter TSP amount applied at first top dressing in KG
85.	fert_oth_td3_das (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
86.	total_dap_applied (a):Total DAP applied by the farmer ( All the application amount in each stageadded )

        Calculation : coalesce(,0)+coalesce(${td1_amt_dap},0)+coalesce(${td2_amt_dap},0)+coalesce(${td3_amt_dap},0)

87.	total_npk_applied (a) : Total NPK applied:

        Calculation: coalesce(,0)+coalesce(${td1_amt_npk},0)+coalesce(${td2_amt_npk},0)+coalesce(${td3_amt_npk},0)

88.	total_urea_applied (a) : Total Urea applied

        Calculation: coalesce(,0)+coalesce(${td1_amt_urea},0)+coalesce(${td2_amt_urea},0)+coalesce(${td3_amt_npk},0)

89.	total_npks_applied (a): Total NPKS applied
        
        Calculation : coalesce(,0)+coalesce(${td1_amt_npks},0)+coalesce(${td2_amt_npks},0)+coalesce(${td3_amt_npks},0)

90.	total_mop_applied

        Calculation: coalesce(,0)+coalesce(${td1_amt_mop},0)+coalesce(${td2_amt_mop},0)+coalesce(${td3_amt_mop},0)
91.	total_ssp_applied

        Calculation: coalesce(,0)+coalesce(${td1_amt_ssp},0)+coalesce(${td2_amt_ssp},0)+coalesce(${td3_amt_ssp},0)

92.	total_tsp_applied

        Calculation : coalesce(,0)+coalesce(${td1_amt_tsp},0)+coalesce(${td2_amt_tsp},0)+coalesce(${td3_amt_tsp},0)

93.	total_znso4_applied

        Calculation: coalesce(${amt_znso4_basal},0)+coalesce(${td1_amt_znso4},0)+coalesce(${td2_amt_znso4},0)+coalesce(${td3_amt_znso4},0)

94.	total_gypsum_applied

        Calculation: coalesce(,0)+coalesce(${td1_amt_gypsum},0)+coalesce(${td2_amt_gypsum},0)+coalesce(${td3_amt_gypsum},0)

95.	total_boron_applied

        Calculation: coalesce(,0)+coalesce(${td1_amt_boron},0)+coalesce(${td2_amt_boron},0)+coalesce(${td3_amt_boron},0)

96.	grade_N (d): Select the grade of Nitrogen in NPK/NPKS mixture applied in  plot in KG

97.	grade_P	Select the grade of Phosphorous in NPK/NPKS mixture applied in 
 plot in KG

98.	grade_K: Select the grade of Potassium in NPK/NPKS mixture applied in  plot in KG

99.	grade_S: Select the grade of Sulphur in NPK/NPKS mixture applied in  plot in KG

<div class = 'alert'>
Note:  Multiple notes are shown for the enumerators to check all of their entries to verify if the entries are correct. All the application from basal, TD1, TD2, TD3 and the total amount applied for the fertilizers are displayed on the screen for the enumerators to recheck their entries and ensure all the entries are correct. 
</div>

1.	n_rate(a) : Nitrogen rate calculated based on the input data 

        Calculate: round((((coalesce(,0) * (.18)) + (coalesce(,0) * (.46)) + ((coalesce(,0) + coalesce(,0))* (coalesce(${grade_N},0) div 100))) div (${cropLarestAreaAcre})) * 2.5,0)
 

2.	p_rate	(a): P rate calculated based on the input data 

        Calculate: 	
        round((((coalesce(,0)* (.46)) + (coalesce(,0)* (.16)) + ((coalesce(,0)+  coalesce(,0))* (coalesce(${grade_P},0) div 100)) +  (coalesce(,0) * (.45))) div (${cropLarestAreaAcre}))* 2.5,0)

3.	k_rate (a) : K Rate calculated based on the input data		

        Calculate: round((((coalesce(,0)*(.60)) + ((coalesce(,0)+ coalesce(,0)) * (coalesce(${grade_K},0) div 100))) div (${cropLarestAreaAcre}))* 2.5,0)

4.	dap_price (d) : DAP price per kg

        Relevant : If the fertilizers are selected in any of the application , and country is Nepal
5.	npk_price (d) : NPK price per kg

        Relevant : If the fertilizers are selected in any of the application and country is Nepal

6.	urea_price (d): Urea price per kg

        Relevant : If the fertilizers are selected in any of the application and country is Nepal

7.	mop_price (d) : Price of Mop per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

8.	znso4_price (d) : Zinc sulphate price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

9.	gypsum_price (d) : Gypsum price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal


10.	boron_price (d) : Boron price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

11.	npks_price (d): Price of NPKS per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal
 
12.	ssp_price (d) : Price of SSP per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

13.	tsp_price (d): Price of TSP per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal 

14.	fert_info_source (m) : What is your source of information on fertilizer/micronutrient use

        choices:        

15.	source_dap(s) : Source of purchase of DAP

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

16.	source_npk(s) : Source of purchase of NPK product

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 



17.	source_urea (s): Source of purchase of Urea

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

18.	source_znso4(s) Source of purchase of Gypsum

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

19.	source_boron (s): Source of purchase of Boron

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

20.	fert_timely_available(s): Is fertilizer/micronutrients generally available on time

        Choices: Yes, No

21.	avg_delay_chem_fert (s): If ‘no’ Average delay in fertilizer availability in weeks 

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

This module contains information about the general irrigation practices of the household on it's largest plot.

[Download the Irrigation Module xlsxform](Modules/irri_mgmt.xlsx)

1.	access_to_irrgation (s): Do you have access to irrigation for the largest  plot of ?	

        Choices: Yes, No

2.	irrigation_done (s)	Did you irrigate your largest  plot?	

        Choices: Yes, No

3.	source_of_irrigation (m): Source of irrigation for  (Select all that apply)	

        Choices: River,Canal,Pond/Tank,Shallow TubeWell,Deep TubeWell
        Relevant : If irrigation_done was Yes. 

4.	application_stage (m)	At what stage was irrigation applied in? (Select all that apply)
	
        Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
        Relevant : If irrigation_done was Yes. 

5.	irrigation_times (s) : Number of irrigations applied after crop establishment (Select one)	

        Choices: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,
        29,30
        Relevant : If irrigation_done was Yes, and source_of_irrigation was not canal. 

6.	irrigation_decision_factor (m): How do you decide when to irrigate? (Select all that apply)

        Relevant : If the number of irrigation done was more than 0
        Choices: Crop Growth Stages, Soil dryness/cracking,Disappearance of flood water,Visible crop stress
		
7.	constraint_factor (m): If  was not irrigated when required, why? (Select all that apply)	

        Choices: Expensive,Sufficient Rainfall,Irrigation not required,Water not available
        when required,Pump/Tubewell not available when required,Other
        Relevant : If irrigation_done was no

8.	tubewell_depth (d) : Depth of tubewell in FEET used to irrigate

        Relevant: if source_of_irrigation was ShallowTubeWell or source_of_irrigation was DeepTubeWell
	
9.	pump_use (s)	Did  use pump to irrigate?	

        Choices: Yes,No
        Relevant: If irrigation_done was yes

10.	pump_energy_src (s): Energy source for the pump	

        Choices: Electricity,Diesel,Both electricity and diesel
        Relevant: If pump_use was yes

11.	pump_hp (s): Select the Horsepower of the pump	

        Choices: 0 to 1 HP,>1 to 2 HP,>2 to 5 HP,5-10 HP,10-20 HP,20-30 HP,30-40 HP,>40 HP
        Relevant: If pump_use was yes

12.	lay_flat_pipe (s) : Did you use lay flat pipe to irrigate?	

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

This module contains information about key production constaints incl. droughts, floods, pests, diseases and lodging.

[Download the Production Constraints Module xlsxform](Modules/df_prod_constraint.xlsx)

1.	face_drought (s) : Did your  crop face drought stress?	

        Choices: Yes,No

2.	drought_growth_stage (m): In which growth stage(s) did drought affect the crop?  (Select all that apply)	

Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
Relevant: If faces drought 

2.	flood_stress(s):  Did your  crop face flood stress? 

        Choices: Yes,No

3.	flood_growth_stage (m):  In which growth stage(s) did flood affect the crop?  (Select all that apply)	

        Choices: Early Vegetative,Mid Vegetative,Flowering,Grain Filling
        Relevant: if flood stress was yes

4.	insecticide_applied(s): Were insecticides applied in the largest  ?

        Choices: Yes,No

5.	insecticide_name (t)	: If yes, name of insecticides	

        Relevant: If insectice_applied was yes

6.	insecticide_app_method (m) : Method of Insecticide application	

        Choices: Irrigation Applied,Soil Applied,Canopy Applied (Foiler spray)

7.	pesticide_applied (s): Were pesticides applied in  for disease control for ?	

        Choices: Yes,No

8.	pesticide_name (t): If yes, name of pesticides	

9.	pesticide_app_method (m): Method of Pesticide application	

        Choices: Seed Treatment,Soil Applied,Canopy Applied (Foiler spray)

10.	lodging_perc	Percentage of crop that lodged (%) in 	

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

This module contains information about weed and pest control and specifically asks about idenification of key weeds.

[Download the Weed-Pest Module xlsxform](Modules/df_weed_pest.xlsx)

[Download the Weed-identification Module xlsxform](Modules/df_weed_iden.xlsx)


1.	herbicide_applied (s): Did you apply herbicide for ?	
        
        Choices: Yes,No

2.	herbicide_times_applied	How many times did you apply herbicide in ?	

        Choices: 1,2,3
        Relevant: herbicide_applied is yes

3.	herbicide_type (s): Type of herbicide applied for 	

        Choices: Pre-emergence,Post-emergence,Both
        Relevant: herbicide_applied is yes

4.	herbicide_name.1 (t)	Name of herbicide for first application in  plot	

5.	herbicide_timing_das.1 (d)	Timing of first herbicide application (in days after sowing/transplanting) plot	
        
        Relevant: If herbicide applied times is more than 0

6.	herbicide_name.2 (t)	Name of herbicide for first application in  plot	(t)

7.	herbicide_timing_das.2 (d)	Timing of first herbicide application (in days after sowing/transplanting) plot	
        
        Relevant: If herbicide applied times is more than 0

8.	herbicide_name.3 (t)	Name of herbicide for first application in  plot	

9.	herbicide_timing_das.3 (d)	Timing of first herbicide application (in days after sowing/transplanting) plot
	
        Relevant: If herbicide applied times is more than 0

10.	manual_weeding_times (s): How many times did you do manual weeding in ?	

        Choices: 0,1,2,3

11.	manual_weeding_das.1 (i)	Time of first manual weeding ( days after crop establishment / sowing in  plot)	

        Relevant: Manual weeding times is 1

12.	manual_weeding_das.2 (i)	Time of first manual weeding ( days after crop establishment / sowing in  plot)

        Relevant: Manual weeding times is 2

13.	manual_weeding_das.3 (i)	Time of first manual weeding ( days after crop establishment / sowing in  plot)	

        Relevant: Manual weeding times is 3

14.	all_weeds (m): 	Identify top ten weeds for surveyed crop in the largest plot based on severity, occurrence and damage in  
	
	Chocies: List of weeds

## Weed Identification module

15.	severity_1_weed (s): Rank the first weed based on severity of damage in 

16.	severity_2_weed(s): Rank the second weed based on severity of damage in 

17.	severity_3_weed(s) : Rank the third weed based on severity of damage in 

18.	severity_4_weed (s): Rank the fourth weed based on severity of damage in 

19.	severity_5_weed (s): : Rank the fifth weed based on severity of damage in 

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


This module contains questions about harvest activities. 

[Download the Harvest Module xlsxform](Modules/df_harvest.xlsx)


1.	harvest_date (d):  Harvest date of  in 	

2.	harvest_days (a) : Harvest days calculated

        Calculation : date() - date()	

3.	harvest_method (s) : Harvesting method of  in 	

        Choices: Combine, Reaper, Manual

4.	crop_residue (s):   crop residue was-	

        Choices: Removed from the field, Retained in the field,B urnt in the field

5.	threshing_method (s) : If reaper or manual, threshing method in 	

        Choices: Manual,Machine
        Relevant: if reaper or manual threshing  in harvest method

6.	total_production_lp (d): 	Total  yield from  in QUINTAL (self reported)
	
7.	qunital_per_acre (a) :	Qunital per acre calculated based on previous entries

        Calculation: round( div ${cropLarestAreaAcre}, 2)

8.	ton_per_hc (a):

	Calculation: round(( * 2.5) div 10, 2)
	
9.	avg_farm_gate_price (d): What was the farm gate price per quintal for  at the time of harvest? (Rs / Taka per quintal)	

10.	production_compare_5_years (s) : How is the production compared of  to the last five years?	

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
 

This module contains information about household economics and markets dynamics.

[Download the Household Economics Module xlsxform](Modules/df_household_econ.xlsx)



1.	total_members (s) : Number of household members (s) 

        Choices: 1,2,3,4,5,6,7,8,9,10,11,12

2.	members_in_ag (s): Number of household members engaged in agriculture		

        Choices: 1,2,3,4,5,6,7,8,9,10,11,12

3.	ruminants (s): How many ruminants (Cow(s) / Buffalo(es) ) are maintained by you?	

        Choices: 0,1,2,3,4,5,6,7,8,9,10,11,12

4.	market_sale_share (s) : Share of total  crop production sold to market (%)	

        Choices: 0,5,10,20,30,40,50,60,70,80,90,100

5.	agri_income_importance (s) : How important is agriculture to your household income?	

        Choices: Low,Medium,High

6.	crop_income_importance (s) : How important is  crop to your household income?	

        Choices: Low,Medium,High

7.	current_crop_sellingprice (d) : Current selling price for  crop sold to market? (Rs/ quintal)	

8.	crop_avg_sellingprice (d) : Average selling price for  crop sold to market (Rs / quintal) (average over the last five years)	

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

This module asks about new agricultural practices.

[Download the Technology Change Module xlsxform](Modules/df_tracking_tech.xlsx)


1.	new_practices	 (m) : Did you use new practices for surveyed crop management this season? (Select all that apply)	

        Choices: Nutrient Management,Crop establishment,Variety replacement,Irrigation management,Weed management,Other,None




</div></div></div>

<div class = "accordion">
<div class = "accordion-item">
<h2 class = "accordion-header"> 
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse16" aria-expanded="false" aria-controls="collapse16">
        **Cost of Cultivation Module**
      </button></h2>
<div id="collapse16" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
<div class="accordion-body">


[Download the Cost of Cultivation Module xlsxform](Modules/df_cost_cult.xlsx)


1.      coc_consent     Would you like to share details for cost of cultivation?        

        Choices: Yes,No

2.	amount_paid_labor_land_prep (d) : Amount paid to labors engaged in land preperation of yourplot

3.	amount_paid_hiring_machine_land_prep (d):  Amount paid/incurred for hiring/using machine in land preperation of yourplot

4.	land_prep_cost_calc	(a):  Land preparation cost calculated by the system

        Calculation : coalesce(,0)+ coalesce(,0)

5.	cost_of_seed (d): Cost of seed for yourplot

6.	amount_paid_broadcasting (d): Amount paid to labors for broadcasting seed on yourplot

7.	amunt_paid_machine_seeing (d) : Amount paid/incurred for hiring/using machine for seeding on yourplot

8.	cost_raising_buying_nursery (d): Cost incurred for raising/buying nursery for yourplot

9.	total_cost_seedling_trasnplanting (d): Total labor/machine cost incurred for seedling transplanting on yourplot


10.	crop_estab_cost_calc	(a): Crop establishment cost calculated

        Calculation : coalesce(,0) +coalesce(,0) + coalesce(,0)+ coalesce(,0) + coalesce(,0)

11.	fym_price_quintal (d):  FYM price per quintal

12.	dap_price_kg (d): DAP price per kg

13.	npk_price_kg (d): NPK price per kg

14.	urea_price_kg (d): Urea price per kg

15.	mop_price_kg	 (d) : MoP price per kg

16.	znso4_price_kg (d):	Zinc Sulphate price per kg

17.	gypsum_price_kg (d): 	Gypsum price per kg

18.	boron_price_kg (d): 	Boron price per kg

19.	npks_price_kg (d) : NPKS price per kg

20.	ssp_price_kg (d) : SSP price per kg

21.	tsp_price_kg (d) : TSP price per kg

22.	other_chem_fert_price_kg (d): 	Total Cost for Other Fertilizer

23.	labor_cost_basal_fert_app (d):  Labor cost incurred for basal fertilizer application

        Relevant: If mineral fertilizer (apply_minfert) was applied and chemical fertilizer (chem_fert_applied) from fertilizer section was applied

24.	labor_cost_td1 (d) : Labor cost incurred for first top dressing

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 1 (td1_fert_applied) from fertilizer section was applied

25.	labor_cost_td2 (d):  Labor cost incurred for second top dressing

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 2 (td2_fert_applied) from fertilizer section was applied


26.	labor_cost_td3 (d):  Labor cost incurred for third top dressing

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 3 (td3_fert_applied) from fertilizer section was applied

27.	total_fertilizer_cost_calc (a) : Total cost of fertilizer application (labor  cost+ fertilizer price * amount of fertilizer applied) 

        Calculation : 
        ((coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0))  + (coalesce(,0) * coalesce(,0)) +  (coalesce(,0) * coalesce(,0) ) +  (coalesce(${znso4_price_kg},0) * coalesce(${total_znso4_applied},0))+ (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + coalesce(,0) + coalesce(${labor_cost_td1},0) + coalesce(${labor_cost_td2},0)+ coalesce(${labor_cost_td3},0) + coalesce(,0))
 

28.	avg_one_irrigation_cost (d) : Average cost incurred for applying one irrigation in your

29.	irrigation_cost_calc (a) : Irrigation Expenses calculated irrigation times * irrigation cost

	Calculation: round((coalesce(,0) * 			 
		         coalesce(,0)), 

30.	cost_manual_weeding (d): Cost incurred in manual weeding(s) for your

	Relevant: If manual weeding is more than 0

31.	cost_herbicide_purchased (d):Cost of herbicide(s) purchased for your

	Relevant: If herbicide applied times is greater than 0

	
32.	cost_herbicide_first_spray(d):  Sparying cost for first spray of herbicide in your

	Relevant: If herbicide applied times is 1


33.	cost_herbicide_second_spray (d):  Sparying cost for second spray of herbicide in your

	Relevant: If herbicide applied times is 2

	
34.	cost_herbicide_third_spray (d): Sparying cost for third spray of herbicide in your

	Relevant: If herbicide applied times is 3


35.	weeding_cost_calc (a):  Cost of manual weeding + cost of herbicide and sum of cost of all herbicide sprays

	Calculation : coalesce(,0)+ 			
		          coalesce(,0) + 			  	
		          coalesce(,0) + 
		         coalesce(,0) + 
		         coalesce(,0)


36.	cost_pesticide(d) : Cost of pesticide(s) purchased for your
	
	Relevant: If pesticide is applied

37.	cost_spraying_pesticide (d) :	Total sparying cost of pesticide(s) in your

	Relevant: If pesticide is applied

38.	pest_mgmt_cost_calc (a): Cost of pest management (Cost of pesticide + cost of spraying pesticide) 

		Calculation: coalesce(,0)+ 
			         coalesce(,0)

39.	labor_cost_harvesting (d):  Total labour cost for harvesting of  in yourplot

	Relevant:  If harvest method is manual or reaper

40.	machine_cost_harvesting (d):  Total machine cost for harvesting of  in yourplot

	Relevant: If harvesting method is Combine

41.	labor_cost_threshing (d) : Total labour cost for threshing of  harvested from yourplot

	Relevant: If threshing method is manual

42.	machine_cost_threshing (d)  : Total machine cost for threshing of  harvested from yourplot

	Relevant: If threshing method is machine

43.	harvest_cost_calc (a):  Total harvesting cost – sum of labor cost of harvesting, machine cost of harvesting, labor cost of thresthing ,machin cost of threshing)

	Calculation: coalesce(,0)+ 
			        coalesce(,0)+ 
			       coalesce(,0) + 
			       coalesce(,0)
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
 

This module contains information to track GHG emissions.

[Download the GHG Emissions Module xlsxform](Modules/df_ghg.xlsx)



1.	flood_frequency (s) : What is the frequency of flooding of the largest plot in a given season	

	Choices: 1 day,2 days,3 days,4 days,5 days,6 days,7 days,1 Week,2 Weeks,
		3 Weeks,4 Weeks

2.	number_passespuddling (s): What is the average number of passes for Puddling?	

	Choices : 1,2,3,4,5

3.	number_passestyne (s): What is the average number of passes for Tyne Cultivator?	

	Choices: 1,2,3,4,5

4.	number_passesdisc (s): What is the average number of passes for Disc Harrow?	

	Chocies: 1,2,3,4,5

5.	number_passes4wt (s): What is the average number of passes for Four Wheel Tractor Rotavator?	

	Choices: 1,2,3,4,5

6.	number_passes2wt (s):What is the average number of passes for Two Wheel Tractor Rotavator?	

	Choices: 1,2,3,4,5

7.	number_passesbullock (s): What is the average number of passes for Bullock drawn plough?	

	Choices: 1,2,3,4,5

8.	perc_residue_removed (s): 	What is the percentage of residue removed by tyne cultivation?	

	Choices: 0,5,10,20,30,40,50,60,70,80,90,100

9.	fym_used_how (m):  : How is FYM used on your farm?	

	Choices: Soil Amendment,Fuel,Sale,Waste,Other

10.	perc_soil_amendement (s):	What percentage of your FYM is used as a soil amendment?	

	Choices:  0,5,10,20,30,40,50,60,70,80,90,100

11.	rice_standing_water_early_growth (d): For how many days was there standing water in the largestplot during early vegetative growth stage?	

12.	rice_standing_water_mid_growth (d):  For how many days was there standing water in the largestplot during mid-vegetative growth stage?	


13.	rice_standing_water_flowering (d): 	For how many days was there standing water in the largestplot during  flowering growth stage?	

14.	rice_standing_water_grain_filling (d): For how many days was there standing water in the largestplot during grain filling growth stage?

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

This module contains the GPS location of the largest plot.

[Download the Geolocation Module xlsxform](Modules/df_geo.xlsx)

1.	longitude_latitude (geopoint) : GPS from the center of the.

<div class = 'alert'>
This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. 
</div>



</div></div></div>






