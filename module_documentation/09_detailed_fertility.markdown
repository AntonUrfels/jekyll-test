---
layout: default
title: 09. Detailed fertility management module
parent: Modules
nav_order: 1
---

# Detailed fertility management module

This module contains information about the general fertility management practices on the largest plot.


<a href="../Modules/df_detail_fert.xlsx" download> Download the Detailed Fertility Management Module xlsxform </a>




1. **chem_fert_applied** (m): Select the fertilizer(s) applied at planting (basal) for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,
                 Boron,Other (e.g. Liquid fertilizers),None

2. **amt_dap_basal** (d): DAP at planting (basal) in kg 
         
    Relevant: Only if DAP is selected as chemical fertilizer applied

3. **amt_npk_basal** (d): NPK product (mixture fertilizer) at planting (basal) in kg    

    Relevant: Only if NPK is selected as chemical fertilizer applied


4. **amt_urea_basal** (d): Urea at planting (basal) in kg   

        Relevant: Only if Urea is selected as chemical fertilizer applied

5. **amt_npks_basal** (d): NPKS at planting (basal) in kg   

        Relevant: Only if NPKS is selected as chemical fertilizer applied


6. **amt_mop_basal** (d): MoP at planting (basal) in kg 

        Relevant: Only if MOP is selected as chemical fertilizer applied

7. **amt_ssp_basal** (d): SSP at planting (basal) in kg

        Relevant: Only if SSP is selected as chemical fertilizer applied
    
8. **amt_tsp_basal**    (d): TSP at planting (basal) in kg

        Relevant: Only if TSP is selected as chemical fertilizer applied
    
9. **amt_znso4_basal** (d): Zinc Sulphate at planting (basal) in kg

        Relevant: Only if Zinc sulphate is selected as chemical fertilizer applied
    

10. **amt_gypsum_basal** (d): Gypsum at planting (basal) in kg  

        Relevant: Only if Gypsum is selected as chemical fertilizer applied

11. **amt_boron_basal** (d): Boron at planting (basal) in kg

        Relevant: Only if Boron is selected as chemical fertilizer applied
    
12. **other_chem_ferts** (t): Enter name of other basal fertilizer applied  

        Relevant: Only if other chemical fertilizer is selected as chemical fertilizer applied

13. **amt_other_chem_ferts** (d): Total  applied in kg  

        Relevant: Only if other chemical fertilizer is selected as chemical fertilizer applied
 

<b>First top dressing</b>

14. **td1_fert_applied** (m):   Select the fertilizer(s) applied at first top dressing for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,
                 Other (e.g. Liquid fertilizers),None


15. **td1_amt_dap** (d) : Basal DAP applied:  kg\nEnter DAP amount applied at first top dressing in KG

16. **fert_dap_td1_das** (i) : Timing of first DAP top dressing (in days after sowing/transplanting)


17. **td1_amt_npk** (d) :    Enter NPK amount applied at first top dressing in KG

18. **fert_npk_td1_das** (i):   Timing of first NPK top dressing (in days after sowing/transplanting)
19. **td1_amt_urea** (d) :    Enter UREA amount applied at first top dressing in KG
20. **fert_urea_td1_das** (i):   Timing of first UREA top dressing (in days after sowing/transplanting)
21. **td1_amt_npks** (d) :    Enter NPKS amount applied at first top dressing in KG
22. **fert_npks_td1_das** (i):   Timing of first NPKS top dressing (in days after sowing/transplanting)
23. **td1_amt_mop** (d) :    Enter MOP amount applied at first top dressing in KG
24. **fert_mop_td1_das** (i):   Timing of first MOP top dressing (in days after sowing/transplanting)
25. **td1_amt_ssp** (d) :    Enter SSP amount applied at first top dressing in KG
26. **fert_ssp_td1_das** (i):   Timing of first SSP top dressing (in days after sowing/transplanting)
27. **td1_amt_tsp** (d) :    Enter TSP amount applied at first top dressing in KG
28. **fert_tsp_td1_das** (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
29. **td1_amt_znso4** (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
30. **fert_znso4_td1_das** (i):   Timing of first Zinc Sulphate top dressing (in days after sowingtransplanting)
31. **td1_amt_gypsum** (d) :    Enter GYPSUM amount applied at first top dressing in KG
32. **fert_gypsum_td1_das** (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)
33. **td1_amt_boron** (d) :    Enter Boron amount applied at first top dressing in KG
34. **fert_borom_td1_das** (i):   Timing of first Boron top dressing (in days after sowing/transplanting)
35. **td1_oth_name** : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
36. **td1_amt_oth** (d) :    Enter TSP amount applied at first top dressing in KG
37. **fert_oth_td1_das** (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>

<b>Second top dressing </b>

38. **td2_fert_applied** (m):   Select the fertilizer(s) applied at second top dressing for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,Other (e.g. Liquid fertilizers),None

39. **td2_amt_dap** (d) :    Enter DAP amount applied at first top dressing in KG
40. **fert_dap_td2_das**:    Timing of first DAP top dressing (in days after sowing/transplanting)
41. **td2_amt_npk** (d) :    Enter NPK amount applied at first top dressing in KG
42. **fert_npk_td2_das** (i):   Timing of first NPK top dressing (in days after sowing/transplanting)
43. **td2_amt_urea** (d) :    Enter UREA amount applied at first top dressing in KG
44. **fert_urea_td2_das** (i):   Timing of first UREA top dressing (in days after sowing/transplanting)
45. **td2_amt_npks** (d) :    Enter NPKS amount applied at first top dressing in KG
46. **fert_npks_td2_das** (i):   Timing of first NPKS top dressing (in days after sowing/transplanting)
47. **td2_amt_mop** (d) :    Enter MOP amount applied at first top dressing in KG
48. **fert_mop_td2_das** (i):   Timing of first MOP top dressing (in days after sowing/transplanting)
49. **td2_amt_ssp** (d) :    Enter SSP amount applied at first top dressing in KG
50. **fert_ssp_td2_das** (i):   Timing of first SSP top dressing (in days after sowing/transplanting)
51. **td2_amt_tsp** (d) :    Enter TSP amount applied at first top dressing in KG
52. **fert_tsp_td2_das** (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
53. **td2_amt_znso4** (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
54. **fert_znso4_td2_das** (i):   Timing of first Zinc Sulphate top dressing (in days after sowingtransplanting)
55. **td2_amt_gypsum** (d) :    Enter GYPSUM amount applied at first top dressing in KG
56. **fert_gypsum_td2_das** (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)
57. **td2_amt_boron** (d) :    Enter Boron amount applied at first top dressing in KG
58. **fert_borom_td2_das** (i):   Timing of first Boron top dressing (in days after sowing/transplanting)
59. **td2_oth_name** : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
60. **td2_amt_oth** (d) :    Enter TSP amount applied at first top dressing in KG
61. **fert_oth_td2_das** (i):   Timing of first TSP top dressing (in days after sowing/transplanting)

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables. 
</div>


<b>Third top dressing </b>

62. **td3_fert_applied** (m):   Select the fertilizer(s) applied at third top dressing for  

        Choices: DAP,NPK,Urea,NPKS,MoP,SSP,TSP,ZnSO4,Gypsum,Boron,Other (e.g. Liquid fertilizers),None

63. **td3_amt_dap** (d) :    Enter DAP amount applied at first top dressing in KG
64. **fert_dap_td3_das**:    Timing of first DAP top dressing (in days after sowing/transplanting)
65. **td3_amt_npk** (d) :    Enter NPK amount applied at first top dressing in KG
66. **fert_npk_td3_das** (i):   Timing of first NPK top dressing (in days after sowing/transplanting)
67. **td3_amt_urea** (d) :    Enter UREA amount applied at first top dressing in KG
68. **fert_urea_td3_das** (i):   Timing of first UREA top dressing (in days after sowing/transplanting)
69. **td3_amt_npks** (d) :    Enter NPKS amount applied at first top dressing in KG
70. **fert_npks_td3_das** (i):   Timing of first NPKS top dressing (in days after sowing/transplanting)
71. **td3_amt_mop** (d) :    Enter MOP amount applied at first top dressing in KG
72. **fert_mop_td3_das** (i):   Timing of first MOP top dressing (in days after sowing/transplanting)
73. **td3_amt_ssp** (d) :    Enter SSP amount applied at first top dressing in KG
74. **fert_ssp_td3_das** (i):   Timing of first SSP top dressing (in days after sowing/transplanting)
75. **td3_amt_tsp** (d) :    Enter TSP amount applied at first top dressing in KG
76. **fert_tsp_td3_das** (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
77. **td3_amt_znso4** (d) :    Enter Zinc Sulphate amount applied at first top dressing in KG
78. **fert_znso4_td3_das** (i):   Timing of first Zinc Sulphate top dressing (in days after sowingtransplanting)
79. **td3_amt_gypsum** (d) :    Enter GYPSUM amount applied at first top dressing in KG
80. **fert_gypsum_td3_das** (i):   Timing of first GYPSUM top dressing (in days after sowing/transplanting)
81. **td3_amt_boron** (d) :    Enter Boron amount applied at first top dressing in KG
82. **fert_borom_td3_das** (i):   Timing of first Boron top dressing (in days after sowing/transplanting)
83. **td3_oth_name** : If other is selected in fertilizers Top dress 1, Enter other fertilizer name applied 
84. **td3_amt_oth** (d) :    Enter TSP amount applied at first top dressing in KG
85. **fert_oth_td3_das** (i):   Timing of first TSP top dressing (in days after sowing/transplanting)
86. **total_dap_applied** (a):Total DAP applied by the farmer ( All the application amount in each stageadded )

        Calculation : coalesce(,0)+coalesce(${td1_amt_dap},0)+coalesce(${td2_amt_dap},0)+coalesce(${td3_amt_dap},0)

87. **total_npk_applied** (a) : Total NPK applied:

        Calculation: coalesce(,0)+coalesce(${td1_amt_npk},0)+coalesce(${td2_amt_npk},0)+coalesce(${td3_amt_npk},0)

88. **total_urea_applied** (a) : Total Urea applied

        Calculation: coalesce(,0)+coalesce(${td1_amt_urea},0)+coalesce(${td2_amt_urea},0)+coalesce(${td3_amt_npk},0)

89. **total_npks_applied** (a): Total NPKS applied
        
        Calculation : coalesce(,0)+coalesce(${td1_amt_npks},0)+coalesce(${td2_amt_npks},0)+coalesce(${td3_amt_npks},0)

90. **total_mop_applied**

        Calculation: coalesce(,0)+coalesce(${td1_amt_mop},0)+coalesce(${td2_amt_mop},0)+coalesce(${td3_amt_mop},0)
91. **total_ssp_applied**

        Calculation: coalesce(,0)+coalesce(${td1_amt_ssp},0)+coalesce(${td2_amt_ssp},0)+coalesce(${td3_amt_ssp},0)

92. **total_tsp_applied**

        Calculation : coalesce(,0)+coalesce(${td1_amt_tsp},0)+coalesce(${td2_amt_tsp},0)+coalesce(${td3_amt_tsp},0)

93. **total_znso4_applied**

        Calculation: coalesce(${amt_znso4_basal},0)+coalesce(${td1_amt_znso4},0)+coalesce(${td2_amt_znso4},0)+coalesce(${td3_amt_znso4},0)

94. **total_gypsum_applied**

        Calculation: coalesce(,0)+coalesce(${td1_amt_gypsum},0)+coalesce(${td2_amt_gypsum},0)+coalesce(${td3_amt_gypsum},0)

95. **total_boron_applied**

        Calculation: coalesce(,0)+coalesce(${td1_amt_boron},0)+coalesce(${td2_amt_boron},0)+coalesce(${td3_amt_boron},0)

96. **grade_N** (d): Select the grade of Nitrogen in NPK/NPKS mixture applied in  plot in KG

97. **grade_P** Select the grade of Phosphorous in NPK/NPKS mixture applied in 
 plot in KG

98. **grade_K**: Select the grade of Potassium in NPK/NPKS mixture applied in  plot in KG

99. **grade_S**: Select the grade of Sulphur in NPK/NPKS mixture applied in  plot in KG

<div class = 'alert'>
Note:  Multiple notes are shown for the enumerators to check all of their entries to verify if the entries are correct. All the application from basal, TD1, TD2, TD3 and the total amount applied for the fertilizers are displayed on the screen for the enumerators to recheck their entries and ensure all the entries are correct. 
</div>

1.  **n_rate**(a) : Nitrogen rate calculated based on the input data 

        Calculate: round((((coalesce(,0) * (.18)) + (coalesce(,0) * (.46)) + ((coalesce(,0) + coalesce(,0))* (coalesce(${grade_N},0) div 100))) div (${cropLarestAreaAcre})) * 2.5,0)
 

2.  **p_rate**  (a): P rate calculated based on the input data 

        Calculate:  
        round((((coalesce(,0)* (.46)) + (coalesce(,0)* (.16)) + ((coalesce(,0)+  coalesce(,0))* (coalesce(${grade_P},0) div 100)) +  (coalesce(,0) * (.45))) div (${cropLarestAreaAcre}))* 2.5,0)

3.  **k_rate** (a) : K Rate calculated based on the input data      

        Calculate: round((((coalesce(,0)*(.60)) + ((coalesce(,0)+ coalesce(,0)) * (coalesce(${grade_K},0) div 100))) div (${cropLarestAreaAcre}))* 2.5,0)

4.  **dap_price** (d) : DAP price per kg

        Relevant : If the fertilizers are selected in any of the application , and country is Nepal
5.  **npk_price** (d) : NPK price per kg

        Relevant : If the fertilizers are selected in any of the application and country is Nepal

6.  **urea_price** (d): Urea price per kg

        Relevant : If the fertilizers are selected in any of the application and country is Nepal

7.  **mop_price** (d) : Price of Mop per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

8.  **znso4_price** (d) : Zinc sulphate price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

9.  **gypsum_price** (d) : Gypsum price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal


10. **boron_price** (d) : Boron price per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

11. **npks_price** (d): Price of NPKS per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal
 
12. **ssp_price** (d) : Price of SSP per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal

13. **tsp_price** (d): Price of TSP per kg

        Relevant : If the fertilizers are selected in any of the application, and country is Nepal 

14. **fert_info_source** (m) : What is your source of information on fertilizer/micronutrient use

        choices:        

15. **source_dap** (s) : Source of purchase of DAP

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

16. **source_npk** (s) : Source of purchase of NPK product

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 



17. **source_urea** (s): Source of purchase of Urea

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

18. **source_znso4** (s) Source of purchase of Gypsum

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

19. **source_boron** (s): Source of purchase of Boron

        Choices: Input Dealer/Village level shop,Cooperative,India for Nepal
        Relevant : If the fertilizers are selected in any of the application 

20. **fert_timely_available** (s): Is fertilizer/micronutrients generally available on time

        Choices: Yes, No

21. **avg_delay_chem_fert** (s): If ‘no’ Average delay in fertilizer availability in weeks 

        Relevant : If no, fert_timely_available
        Choices: 1 – 10 

<div class = 'alert'>
Note: This module is dependent on the “Land Unit and Ownership” modules. It borrows values from surveyed plot size, local land unit, from the Land Unit and ownership module. And it also borrows the crop name (crop_name) variable from the “Respondent” module. Make sure to include the three dependent variables.
 </div>
