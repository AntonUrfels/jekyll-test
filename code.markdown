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


