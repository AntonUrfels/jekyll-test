---
layout: page
title: Tools
permalink: /tools/
description: Here's an overview of different tools that help you working with LCAS datasets. Tools are written in R. Templates and deployment are generally done with Kobo toolbox.

---

![](photo.jpg)


# R Scripts for data management and transformation

This page provides an overview of R scripts than have been developed to work with LCAS data.
It includes support for the following functionalities:

- Importing data from ODK/Kobo
- Cleaning data and variable names
- Generating additional features
- Running automated simple analytics
- Running advanced analytics



# API script to import datasets from ODK/Kobo

This section provides an overview of R scripts that import datasets through API calls.

The R functions for this can be found in the [data_import.R](code/data_import.R) file. 


````
# setting api link 
f <- "api-link.com"
user <- "your_username"
passowrd <- "your_password"

#retrieve data
df <- api_call(f,user,password)

#write data to file for future use
write.csv(df,"outputs/df.csv")
````

# Renaming variables to standard one

To work with several datasets, it is important to rename all variable names into the same, standard variables. Ideally, standard variable names are used in the ODK tools so that the recorded data can easily be analyzed. If during data collection it was decided to change variable names - or older surveys are added - then this section provides support for renaming variable names.

Variable naming for LCAS is done through a dictionary where any surveys variables can be mapped to the standard variable names. This helps to save time and simplify the process.

We provide a [standard variable name dictionary](dict.csv). To add you own survey, just add an additional column that contains the variable names of the survey that you want to add in the rows of the corresponding standard variable name.

You can find the function for renaming survey datasets into standard LCAS variable names in the [rename_lcas.R](code/rename_lcas.R) file. 


```
# load dictionary
f1 <- "dictionary.csv"
dict <- read.csv(f1)

# load survey data
df <- read.csv(non_strandard_lcas.csv)
df <- rename_lcas(dict, df)
```


# Data cleaning and anonymization

#### Adding data (e.g. climate,soil) requiring specific geo-locations

Can use LSMS to get additional data from global datasets.
Use Robert's 'geodata' package to mine variables.

````



````



### Feature generation and data wrangling

#### Fertilizer Rates

#### Yield per ha

#### Convert dates to day of year



### Basic Analytics by module


#### Descriptive stats

#### Random forest for yield predictions and diagnostics



### Toolboxes for advanced


