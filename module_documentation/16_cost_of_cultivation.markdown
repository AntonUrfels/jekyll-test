---
layout: default
title: 16. Cost of cultivation module
parent: Modules
nav_order: 1
---

# Cost of cultivation module

This module contains the cost of cultivation data. These variable names include:

<a href="../Modules/df_cost_cult.xlsx" download> Download the Cost of Cultivation Module xlsxform </a>



1.      **coc_consent**     Would you like to share details for cost of cultivation?        

        Choices: Yes,No

2.  **amount_paid_labor_land_prep** (d) : Amount paid to labors engaged in land preperation of yourplot

3.  **amount_paid_hiring_machine_land_prep** (d):  Amount paid/incurred for hiring/using machine in land preperation of yourplot

4.  **land_prep_cost_calc** (a):  Land preparation cost calculated by the system

        Calculation : coalesce(,0)+ coalesce(,0)

5.  **cost_of_seed** (d): Cost of seed for yourplot

6.  **amount_paid_broadcasting** (d): Amount paid to labors for broadcasting seed on yourplot

7.  **amunt_paid_machine_seeing** (d) : Amount paid/incurred for hiring/using machine for seeding on yourplot

8.  **cost_raising_buying_nursery** (d): Cost incurred for raising/buying nursery for yourplot

9.  **total_cost_seedling_trasnplanting** (d): Total labor/machine cost incurred for seedling transplanting on yourplot


10. **crop_estab_cost_calc**    (a): Crop establishment cost calculated

        Calculation : coalesce(,0) +coalesce(,0) + coalesce(,0)+ coalesce(,0) + coalesce(,0)

11. **fym_price_quintal** (d):  FYM price per quintal

12. **dap_price_kg** (d): DAP price per kg

13. **npk_price_kg** (d): NPK price per kg

14. **urea_price_kg** (d): Urea price per kg

15. **mop_price_kg**     (d) : MoP price per kg

16. **znso4_price_kg** (d): Zinc Sulphate price per kg

17. **gypsum_price_kg** (d):    Gypsum price per kg

18. **boron_price_kg** (d):     Boron price per kg

19. **npks_price_kg** (d) : NPKS price per kg

20. **ssp_price_kg** (d) : SSP price per kg

21. **tsp_price_kg** (d) : TSP price per kg

22. **other_chem_fert_price_kg** (d):   Total Cost for Other Fertilizer

23. **labor_cost_basal_fert_app** (d):  Labor cost incurred for basal fertilizer application

        Relevant: If mineral fertilizer (apply_minfert) was applied and chemical fertilizer (chem_fert_applied) from fertilizer section was applied

24. **labor_cost_td1** (d) : Labor cost incurred for first top dressing

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 1 (td1_fert_applied) from fertilizer section was applied

25. **labor_cost_td2** (d):  Labor cost incurred for second top dressing

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 2 (td2_fert_applied) from fertilizer section was applied


26. **labor_cost_td3** (d):  Labor cost incurred for third top dressing

        Relevant: If mineral fertilizer (apply_minfert) was applied and top dress 3 (td3_fert_applied) from fertilizer section was applied

27. **total_fertilizer_cost_calc** (a) : Total cost of fertilizer application (labor  cost+ fertilizer price * amount of fertilizer applied) 

        Calculation : 
        ((coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0))  + (coalesce(,0) * coalesce(,0)) +  (coalesce(,0) * coalesce(,0) ) +  (coalesce(${znso4_price_kg},0) * coalesce(${total_znso4_applied},0))+ (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + (coalesce(,0) * coalesce(,0)) + coalesce(,0) + coalesce(${labor_cost_td1},0) + coalesce(${labor_cost_td2},0)+ coalesce(${labor_cost_td3},0) + coalesce(,0))
 

28. **avg_one_irrigation_cost** (d) : Average cost incurred for applying one irrigation in your

29. **irrigation_cost_calc** (a) : Irrigation Expenses calculated irrigation times * irrigation cost

    Calculation: round((coalesce(,0) *           
                 coalesce(,0)), 

30. **cost_manual_weeding** (d): Cost incurred in manual weeding(s) for your

    Relevant: If manual weeding is more than 0

31. **cost_herbicide_purchased** (d):Cost of herbicide(s) purchased for your

    Relevant: If herbicide applied times is greater than 0

    
32. **cost_herbicide_first_spray** (d):  Sparying cost for first spray of herbicide in your

    Relevant: If herbicide applied times is 1


33. **cost_herbicide_second_spray** (d):  Sparying cost for second spray of herbicide in your

    Relevant: If herbicide applied times is 2

    
34. **cost_herbicide_third_spray** (d): Sparying cost for third spray of herbicide in your

    Relevant: If herbicide applied times is 3


35. **weeding_cost_calc** (a):  Cost of manual weeding + cost of herbicide and sum of cost of all herbicide sprays

    Calculation : coalesce(,0)+             
                  coalesce(,0) +                
                  coalesce(,0) + 
                 coalesce(,0) + 
                 coalesce(,0)


36. **cost_pesticide** (d) : Cost of pesticide(s) purchased for your
    
    Relevant: If pesticide is applied

37. **cost_spraying_pesticide** (d) :   Total sparying cost of pesticide(s) in your

    Relevant: If pesticide is applied

38. **pest_mgmt_cost_calc** (a): Cost of pest management (Cost of pesticide + cost of spraying pesticide) 

        Calculation: coalesce(,0)+ 
                     coalesce(,0)

39. **labor_cost_harvesting** (d):  Total labour cost for harvesting of  in yourplot

    Relevant:  If harvest method is manual or reaper

40. **machine_cost_harvesting** (d):  Total machine cost for harvesting of  in yourplot

    Relevant: If harvesting method is Combine

41. **labor_cost_threshing** (d) : Total labour cost for threshing of  harvested from yourplot

    Relevant: If threshing method is manual

42. **machine_cost_threshing** (d)  : Total machine cost for threshing of  harvested from yourplot

    Relevant: If threshing method is machine

43. **harvest_cost_calc** (a):  Total harvesting cost – sum of labor cost of harvesting, machine cost of harvesting, labor cost of thresthing ,machin cost of threshing)

    Calculation: coalesce(,0)+ 
                    coalesce(,0)+ 
                   coalesce(,0) + 
                   coalesce(,0)
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. This module also uses site charactestic and crop establishment module. Additionally, it uses Fertility Management, Detailed fertility management, Irrigation management, Production constraint, Weed and Pest control, weed identification, Harvest modules as well for calculation 
</div>

