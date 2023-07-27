---
layout: default
title: 03. Location module
parent: Modules
nav_order: 1
---

# Location Module

This module contains the location details of the respondents. 

<a href="../Modules/df_location.xlsx" download> Download the Location Module xlsxform </a>

1. **country**: Country of the respondent
2. **ADM1**: The highest administrative division of the country (State in India)

        Type: Select one type

3.  **ADM2**: Administrative division that comes after ADM1 (District in India)

        Type: Select one type
        
        Choice-filter: The choices that appear on this question are dependent 
        on the choice made in ADM 1. 

4.  **ADM3**: Administrative division after ADM2 (Block)

        Type: Select one type
        Choice-filter: The choices that appear on this question are dependent
        on the choice made in ADM 1. 

5.  **ADM4**: Administrative division after ADM3 (village)

        Type: This is a text type question. The enumerator is free to type the
        name of the village as per the respondent’s response. 
