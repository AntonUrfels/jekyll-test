---
layout: default
title: 07. Site characteristics and crop establishment module
parent: Modules
nav_order: 1
---

# Site characteristics and crop establishment module

This module contains questions about the survey plot and crop establishment

[Download the Site Characteristics and Crop Establishment Module xlsxform](Modules/df_site_char.xlsx)


1.  **soil_texture** (s): Soil texture of the largest  in local land unitplot

                
        Choices: Light, Medium, Heavy

2.  **dry_field** (s): At the end of the Kharif season, when is your largestplot dry enough to have access for Rabi crop?

        Choices: Before 3rd week of October, 3rd week of October, 
        4th week of October,1st week of November, 2nd week of November, 
        3rd week of November, 4th week of November, 
        1st week of December, 2nd week of December, 3rd week of December,
        4th week of December, After 4th week of December

3.  **dry_field_five_year_avg** (s): Over the last five years, at the end of the Kharif season, when is your largestplot dry enough to have access for Rabi crop?

        Choices: Before 3rd week of October, 3rd week of October, 4th week of October,
                1st week of November, 2nd week of November, 3rd week of November, 
                4th week of November, 1st week of December, 2nd week of December, 
                3rd week of December, 4th week of December, After 4th week of December

3.  **recede_water** (s):  After flooding/flood irrigation, how long does it take to recede water from your largestplot? 

        Choices: 1 day, 2 days, 3 days, 4 days, 5 days, 6 days, 7 days, 
                1 Week, 2 Weeks, 3 Weeks, 4 Weeks

5.  **drainage_class**   (s): Drainage class of the largestplot.

        Choices: Upland, Medium land, Low land

6.  **soil_perception** (s): Farmer’s perception of soil quality on the plot of

        Choices: High, Medium, Low
 

7.  **previous_crop** (s): Previous major crop cultivated before  in

        Choices: Bajra, Banana, Blackgram, Caster, Chickpea (Gram), Chilli, 
                Cotton, Fallow,Greengram,GreenManure,Groundnut,IndianMustard,Jowar,
                Lentil, Maize,Mungbean,Other,PigeonPea,Pulses,Redgram,Rice,
                Soybean,Sugarcane,Sunflower, Turmeric, Vegetables, Mentha, Wheat

8.  **third_crop_yesno** (s): Have you grown any third crop on  plot

        Choices: Yes, No

9.  **third_crop_name** (s) : Select the third crop grown on  plot

        Choices: Bajra, Banana, Blackgram, Caster, Chickpea (Gram), Chilli, 
                Cotton, Fallow, Greengram,GreenManure,Groundnut,IndianMustard,Jowar,
                Lentil, Maize,Mungbean,Other,PigeonPea,Pulses,Redgram,Rice,
                Soybean,Sugarcane,Sunflower, Turmeric, Vegetables, Mentha,
                Wheat

10. **prev_crop_tillage** (m)   What was the tillage type for previous  crop in  plot? (select all that apply)

        Choices: Puddling (wet tillage) (NOT applicable for Wheat), 
                Disc harrow, Tyne cultivator, 4 wheel tractor rotavator,
                2 wheel tractor rotavator,Bullock drawn plough, 
                Strip tillage, No tillage, Other

11. **prev_crop_harvest_date** (da) Enter date of previous  crop harvest in  plot
12. **prev_crop_harvest_method** (s) : What was the method of previous crop harvesting?

        Choices: Combine, Reaper, Manual

13. **prev_crop_residue** (s):   crop residue was

        Choices: Removed from the field, Retained in the field, 
                Burnt in the field

14. **variety_name** (s):  Variety name of 

        Choices: Lists out different varieties of the rice to choose from 

15. **variety_name_other** (t): Enter name of other  variety

        Relevant: If variety name is selected as “other” the enumerator gets 
                to input the rice variety 
16. **variety_type** (s): What is the variety type of ?

        Choices: Improved, Hybrid, Other

17. **ce_method** (s):   establishment method in the largestplot

        Choices: Manual transplanted (Random), Manual transplanted in line, 
                Directly sown by broadcast method, Directly sown by seed drill, 
                Directly sown followed by busheling, Machine transplanted, 
                Line sowing after tillage, Broadcasting, Zero tillage, Broadcasting, 
                Manual line sowing, Seed drill, Other

18. **ce_irrigation** (s): Did you apply irrigation at the time of crop establishment in the largestplot?

        Choices: Yes, No

19. **land_prep_method** (m): Land preparation method in the largestplot (select all that apply)

        Choices: Puddling (Wet tillage), Tyne cultivator, Disc harrow,
                rotavator, 2 wheel tractor, 4 wheel tractor, Bullock drawn plough, 
                Strip tillage, No tillage

20. **rotavator_till_number_of_years** (s):     If tillage by rotavator, number of years of continuous use inplot

        Choices: 1,2,3,4,5,6,7,8,9,10
                
        Relevant: If land preparation method  was Four Wheel Tractor Rotavator
                or Two Wheel Tractor rotavator

21. **date_nursery_estd** (da) : If rice transplanted, date of nursery establishment

        Relevant: Question only shows up if the crop selected is rice, 
                           and the crop establishment method is Transplanted 
                
        Constraint: The form does not accept any future dates 

22. **planting_date_dsr** (da): Date of seeding / transplanting / direct sowing (if DSR rice) or
sowing (wheat)



<div class = 'alert'>Note: The date for previous crop harvest is displayed for the enumerator to correctly select DSR date which should be after the harvest date of the previous crop 
</div>
<br>

23. **seedling_age** (c): This is a calculate field and it calculate the seedling age by :

    Calculation: transplanting date – nursery establishment date

<br>

24. **delay_reasons** (m): If wheat planting was delayed past November 30 in this season, why? 

        Relevant: This question is displayed only for wheat and if the wheat 
                sowing date is after November 30. 

        Choices: Previous crop (e.g. rice) harvested late, Land too wet for ploughing,
                Non availability of tillage equipment, Non availability of seed, 
                No availability of fertilizers, Labor shortage, Lack of moisture at sowing, 
                Lack of funds, No delay, Other
<div class = 'important'>Note: Remember to change the “year” in the module to match the year in the relevant column.
</div> 

<br>

25. **delay_reason_others** (t): Enter other reason in delay of sowing this season

        Relevant: If delay reasons is selected as other

26. **delay_common_reason** (m): If wheat planting is commonly delayed past November 30th in most years, why? (Select all that apply)

        Relevant: This question is displayed only for wheat and if the wheat sowing 
                date is after November 30. 

        Choices: Previous crop (e.g. rice) harvested late,
                Land too wet for ploughing,Non availability of tillage equipment, 
                Non availability of seed, No availability of fertilizers,
                Labor shortage, Lack of moisture at sowing, 
                Lack of funds, No Delay


27. **delay_common_reason_oth** (t): Enter other reason if wheat planting is commonly delayed past Nov 30th in most year.

        Relevant: If common delay reasons is selected as other



28. **nursery_determining_factor**(m): What mostly determines the timing of rice nursery establishment? (Select all that apply)

        Relevant: Only for rice

        Choices: Calendar date, Arrival of pre-monsoon showers, 
                Irrigation water availability, Weather forecast information, 
                Practices of neighboring farmers, Seed availability, Other

29. **timing_determing_factor** (m):  What mostly determines the timing of rice planting in the largest  plot? (Select all that apply)

        Relevant: Only for rice

        Choices: Calendar date, Seedling age, Arrival of rains, 
        Irrigation water availability, Labor availability

30. **seed_amount** (d):  seed amount used for the largestplot in kg


31. **seed_source** (s): What is the source of seed for  used for the largest  plot?

        Choices: Self saved, Neighbor or Relative,Private seed dealer, 
                Cooperative, Government / KVK / SAU

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables.
 </div>
