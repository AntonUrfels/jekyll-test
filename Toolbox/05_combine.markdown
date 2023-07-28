---
layout: default
title: 05. Reshape dataframe
parent: Toolbox
permalink: toolbox/combine
nav_order: 1
---

# 5. Combine different LCAS datasets


Sometimes one may wish to combine different surveys (e.g. all rice surveys in India; all crop surveys in South Asia etc.). For this we provide the following convenience script. 

The script for this can be found at [code/combine_lcas.R](code/combine_lcas.R). It provides the option to drop all non-standard variables (drop), keep the variables that exist in both surveys (keep), or keep all (all).

```R
#load both lcas datasets
f1 <- "lcas1.csv"
f2 <- "lcas2.csv"
df1 <- read.csv(f1)
df1 <- read.csv(f2)

#merge both datasets
df <- combine_lcas(df1,df2,"drop")

#save to csv file
write.csv(df,"lcas_combined.csv")
```
