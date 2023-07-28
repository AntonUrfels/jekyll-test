---
layout: default
title: 01. Data import
parent: Toolbox
permalink: /toolbox/data_import
nav_order: 1
---



# 1. Importing data into the analysis envrionment
This section provides an overview of R scripts that import datasets through API calls. API stands for Advanced Programming Interface (API) - that is a standardized to communicate with a server. When data is collected digitally with ODK, Kobo or other tools, it is normally stored on a webserver. One can then use a specified request to the API of that server to request a download of the dataset of interest. Normally it requires providing your password and username (e.g. for KOBO or ODK Central) for authentication.

The R functions for this can be found in the [data_import.R](../code/data_import.R) file. 


```R
# setting api link 
f <- "api-link.com"
user <- "your_username"
passowrd <- "your_password"

#retrieve data
source(data_import.R)
df <- api_call(f,user,password)

#write data to file for future use
write.csv(df,"outputs/df.csv")
```
