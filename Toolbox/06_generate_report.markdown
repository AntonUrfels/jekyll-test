---
layout: default
title: 06. Generate report
parent: Toolbox
permalink: toolbox/gen_report
nav_order: 1
---

# 6. Generate simple report


After collecting the data, one of the powerful functions of the LCAS system is to provide automated and quick insights into key drivers and outcomes of agricultural systems at landscape level.

You can look at a [sample_report](../toolbox/show_report) for the India rice datasets of 2017 and 2018. After cleaning the dataset with the above procedures. You may use the following function to generate the same report for your LCAS dataset(s) of interest. 

The code is stored in <a href="https://github.com/AntonUrfels/lcas/blob/gh-pages/code/generate_lcas_report.Rmd" target="_blank">generate_lcas_report.Rmd</a>.


```R
#read in the cleaned LCAS dataset
f <- "data/india_rice_17_18.csv"
df <- read.csv(f)

#run report generation function
generate_lcas_report(df,"outputs/reports/rice_india_17_18_report.html")
```
