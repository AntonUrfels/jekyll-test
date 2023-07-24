---
layout: default
title: 04. Reshape dataframe
parent: Toolbox
nav_order: 1
---

# 4. Reshape lcas dataframe


## 4.1 Reshape wide dataframe to long

Many surveys such as LSMS and DHS store their datasets in long format and per modules. One of the advantages of the LCAS is that it is relatively simple. It normally only surveys one plot (the largest one) per household. This makes it easy to use for analyses workflow that normally require data in wide format. It is also easier to handle for researchers with less experience in handling complicated and relational databases.

The standard data format for LCAS is therefore the wide format. For convenience, we provide here reshaping scripts that convert the wide format LCAS into seperate modules in long format. This might be helpful for compatibility with other surveys and if researchers seek to collect data for multiple plots per household.

The code is stored in <a href="https://github.com/AntonUrfels/lcas/blob/gh-pages/code/data_shaping.R" target="_blank">data_shaping.R</a>.

```R
# Read in dataset with standard variable names. Sample code  -----------------
f <- "data/india_rice_17_18.csv"
df <- read.csv(f)
f <- "data/dictionary_with_questions.csv"
dict <- read.csv(f)

#Run reshaping functions that automatically safe the 
#long format modules in outputs/long_db/module_names.csv
long_lcas(df,dict)

```

