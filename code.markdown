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


```R
# setting api link 
f <- "api-link.com"
user <- "your_username"
passowrd <- "your_password"

#retrieve data
df <- api_call(f,user,password)

#write data to file for future use
write.csv(df,"outputs/df.csv")
```


# Data cleaning and anonymization

Data cleaning and anonymization is crucial for secure data storage and effective analytics.


#### Renaming variables to standard one

To work with several datasets, it is important to rename all variable names into the same, standard variables. Ideally, standard variable names are used in the ODK tools so that the recorded data can easily be analyzed. If during data collection it was decided to change variable names - or older surveys are added - then this section provides support for renaming variable names.

Variable naming for LCAS is done through a dictionary where any surveys variables can be mapped to the standard variable names. This helps to save time and simplify the process.

We provide a [standard variable name dictionary](dict.csv). To add you own survey, just add an additional column that contains the variable names of the survey that you want to add in the rows of the corresponding standard variable name.

You can find the function for renaming survey datasets into standard LCAS variable names in the [rename_lcas.R](code/rename_lcas.R) file. 


```R
#load dictionary
f1 <- "dictionary.csv"
dict <- read.csv(f1)

#load survey data
df <- read.csv(lcas_raw.csv)
df <- rename_lcas(dict, df)

#write the data with standard variable names
write.csv(df,"outputs/lcas_renamed.csv")
```

#### Adding data (e.g. climate,soil) requiring specific geo-locations

For many analyses it is useful to add secondary data including socio-economic and bio-physical variables such as climate, population density, distance to markets and many more. Since this requires precise GPS locations, it is best to run this script before anonymizing the data. But since many variable do not vary in space across small distances such as the anonomyzing offset, it may also be run afterwards.

Other existing households surveys routinely do this and several R packages exist to download and add secondary data to vector data. Here we primarily rely on Robert Heijman's 'geodata' package in R as well as the World Bank's Living Standards Measurement Survey (LSMS). The functions for adding these additional features are described in the R script file [add_secondary_lcas.R](code/add_secondary_lcas.R).


```R
#load LCAS with standard variable names
f <- "outputs/lcas_renamed.csv"
df <- read.csv(f)

#anonymize the data
df <- add_secondary_lcas.R(df)

#write anonymized data to csv.
write.csv(lcas_secondary.csv)
```



#### Anonymization
Raw LCAS data are not safe to share as it endagers the privacy of the respondendts. To anonymize the data we (i)remove the unique ID columns incl. name, father's name, mobile number, and national ID number and (ii) offset the locations of the GPS datapoints. Offsetting (instead of dropping) the GPS coordinates has the benefit that the data can still be used for spatial analytics, but without identifying specific farmers or fields.

Importantly, the variable names have to be standardized for the functions to work. The R code for anonymizing raw LCAS data can be found in [anonymize_lcas.R](code/anonomyze_lcas.R).

```R
#load LCAS with standard variable names
f <- "outputs/lcas_secondary.csv"
df <- read.csv(f)

#anonymize the data
df <- anonymize_lcas(df)

#write anonymized data to csv.
write.csv(lcas_anonymized.csv)
```


### Feature generation and data wrangling

#### Fertilizer Rates

#### Yield per ha

#### Convert dates to day of year



### Basic Analytics by module


#### Descriptive stats

#### Random forest for yield predictions and diagnostics



### Toolboxes for advanced


