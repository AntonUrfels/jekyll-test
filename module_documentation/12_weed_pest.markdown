---
layout: default
title: 12. Weed and pest control module
parent: Modules
nav_order: 1
---

# Weed and pest control

This module contains information about weed and pest control and specifically asks about idenification of key weeds.

[Download the Weed-Pest Module xlsxform](../Modules/df_weed_pest.xlsx)

[Download the Weed-identification Module xlsxform](../Modules/df_weed_iden.xlsx)


1.  **herbicide_applied** (s): Did you apply herbicide for ?    
        
        Choices: Yes,No

2.  **herbicide_times_applied** How many times did you apply herbicide in ? 

        Choices: 1,2,3
        Relevant: herbicide_applied is yes

3.  **herbicide_type** (s): Type of herbicide applied for   

        Choices: Pre-emergence,Post-emergence,Both
        Relevant: herbicide_applied is yes

4.  **herbicide_name.**1 (t)    Name of herbicide for first application in  plot    

5.  **herbicide_timing_das**.1 (d)  Timing of first herbicide application (in days after sowing/transplanting) plot 
        
        Relevant: If herbicide applied times is more than 0

6.  **herbicide_name.2** (t)    Name of herbicide for first application in  plot    (t)

7.  **herbicide_timing_das.2** (d)  Timing of first herbicide application (in days after sowing/transplanting) plot 
        
        Relevant: If herbicide applied times is more than 0

8.  **herbicide_name.3** (t)    Name of herbicide for first application in  plot    

9.  **herbicide_timing_das.3** (d)  Timing of first herbicide application (in days after sowing/transplanting) plot
    
        Relevant: If herbicide applied times is more than 0

10. **manual_weeding_times** (s): How many times did you do manual weeding in ? 

        Choices: 0,1,2,3

11. **manual_weeding_das.1** (i)    Time of first manual weeding ( days after crop establishment / sowing in  plot) 

        Relevant: Manual weeding times is 1

12. **manual_weeding_das.2** (i)    Time of first manual weeding ( days after crop establishment / sowing in  plot)

        Relevant: Manual weeding times is 2

13. **manual_weeding_das.3** (i)    Time of first manual weeding ( days after crop establishment / sowing in  plot) 

        Relevant: Manual weeding times is 3

14. **all_weeds** (m):  Identify top ten weeds for surveyed crop in the largest plot based on severity, occurrence and damage in  
    
    Chocies: List of weeds

## Weed Identification module

15. **severity_1_weed** (s): Rank the first weed based on severity of damage in 

16. **severity_2_weed**(s): Rank the second weed based on severity of damage in 

17. **severity_3_weed**(s) : Rank the third weed based on severity of damage in 

18. **severity_4_weed** (s): Rank the fourth weed based on severity of damage in 

19. **severity_5_weed** (s): : Rank the fifth weed based on severity of damage in 

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>
