---
layout: page
title: Toolbox
permalink: /toolbox/
description: Here's an overview of different tools that help you working with LCAS datasets. Tools are written in R. Templates and deployment are generally done with Kobo toolbox.

---

![](photo.jpg)


# R Scripts for data management and analysis

The LCAS is designed to provide rapid insights through efficiently collected surveys. In this page, we provide an overview of key workflows and analysis pipelines. The general steps in the workflow are as follows:

0. Data collection (see [survey deployment section](deployment/))
1. Importing data into the analysis envrionment
2. Data cleaning
3. Add calculated variables and geodata
4. Run automated, simple analytics
5. Run more advanced analytics requiring manual fine-tuning

To get started, you may clone the LCAS github repo. It contains all the scripts and samples for how to run these scripts with existing anonymized datasets that have been collected for India.

[![](Workflow_analysis.png)](../Workflow_analysis.png)




# 1. Importing data into the analysis envrionment
This section provides an overview of R scripts that import datasets through API calls. API stands for Advanced Programming Interface (API) - that is a standardized to communicate with a server. When data is collected digitally with ODK, Kobo or other tools, it is normally stored on a webserver. One can then use a specified request to the API of that server to request a download of the dataset of interest. Normally it requires providing your password and username (e.g. for KOBO or ODK Central) for authentication.

The R functions for this can be found in the [data_import.R](code/data_import.R) file. 


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


# 2. Data cleaning

Data cleaning and anonymization is crucial for secure data storage and effective analytics.


#### 2.1 Renaming the column headers to standard variable names

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


#### 2.2 Adding secondary data (e.g. climate,soil) requiring specific geo-locations

For many analyses it is useful to add secondary data including socio-economic and bio-physical variables such as climate, population density, distance to markets and many more. Since this requires precise GPS locations, it is best to run this script before anonymizing the data. But since many variable do not vary in space across small distances such as the anonomyzing offset, it may also be run afterwards.

Other existing households surveys routinely do this and several R packages exist to download and add secondary data to vector data. Here we primarily rely on Robert Heijman's 'geodata' package in R as well as the World Bank's Living Standards Measurement Survey (LSMS). The functions for adding these additional features are described in the R script file [add_secondary_lcas.R](code/add_secondary_lcas.R).


```R
#load LCAS with standard variable names
f <- "outputs/lcas_renamed.csv"
df <- read.csv(f)

#anonymize the data
df <- add_secondary_lcas.R(df)

#write anonymized data to csv.
write.csv(df,"lcas_secondary.csv")
```


#### 2.3 Anonymization
Raw LCAS data are not safe to share as it endagers the privacy of the respondendts. To anonymize the data we (i)remove the unique ID columns incl. name, father's name, mobile number, and national ID number and (ii) offset the locations of the GPS datapoints. Offsetting (instead of dropping) the GPS coordinates has the benefit that the data can still be used for spatial analytics, but without identifying specific farmers or fields.

Importantly, the variable names have to be standardized for the functions to work. The R code for anonymizing raw LCAS data can be found in [anonymize_lcas.R](code/anonomyze_lcas.R).

```R
#load LCAS with standard variable names
f <- "outputs/lcas_secondary.csv"
df <- read.csv(f)

#anonymize the data
df <- anonymize_lcas(df)

#write anonymized data to csv.
write.csv(df,"lcas_anonymized.csv")
```

# 3. Add calculated variables and geodata

Much of the variables collected are sub-components of another feature of interest. These features require further transformation to be available for use in models and analyses. For example, inputs and outputs tend to be normalized by area (yield, fertilizer applicated rates etc.) While there's a multitude of such features, we provide an overview and the tools to calculate the most important ones here.


#### 3.1 Local land unit (LLU) conversions

Since most farmers use LLUs - the raw data is collected in these with addition to a LLU conversion factor. Since most application require ha for land units - we provide a function that converts all variables collected in LLU towards ha.

The script can be found at [code/calc_llu_to_ha.R](code/calc_llu_to_ha.R)


```R
#read anoymous lcas dataset
f <- "outputs/lcas_anonymized.csv"
df <- read.csv(f)

#calculate fertilizer rates
df <- calc_llu_to_ha(df)


```



#### 3.2 Yield per ha

Most application are intested in yield outcomes. Yields are generally calculated by dividing a farms total production of a crop in that season through the area on which this crop was calculated.


The script can be found at [code/calc_yield.R](code/calc_yield.R)

```R
#read anoymous lcas dataset
f <- "outputs/lcas_anonymized.csv"
df <- read.csv(f)

#calculate fertilizer rates
df <- calc_yield(df)


```


#### 3.3 Fertilizer Rates

Fertilizer application rates are calculated by summing the fertilizer inputs (basal application + top dressings) and multplying each fertilizer input with the percentage of N, P, or K contained in the fertilizer. The total nutrient inputs are then normalized by the area of the field towards a per ha basis.

Specifically we use the following nutrient concentrations (N-P-K):

- Urea: (46-0-0)
- NPK: (12-32-16)
- DAP: (18-46-0)
- TSP: (0-45-0)


The script can be found at [code/calc_fert_rate.R](code/calc_fert_rate.R)

```R
#read anoymous lcas dataset
f <- "outputs/lcas_anonymized.csv"
df <- read.csv(f)

#calculate fertilizer rates
df <- calc_fert_rate(df)

```


#### 3.4 Convert dates to day of year and days since 1980-01-01

Most application require that dates are saved in a numeric format. Although some functions and packages can handle variables formatted as dates, it is often required to use simple numeric fomats. The most straightforward way is to convert dates into days per year. However, when an anlaysis stretches across one calendar year then the re-starting of the counting at 1 can cause issues. For this purpose we provide both the day of the year and the days since 1980-01-01 - a standard practice.

Most importantly, we are looking for planting and harvesting dates. 


The script can be found at [code/calc_dates.R](code/calc_dates.R)


```R
#read anoymous lcas dataset
f <- "outputs/lcas_anonymized.csv"
df <- read.csv(f)

#calculate fertilizer rates
df <- calc_dates(df)

```

#### 3.5 Reshape and safe final dataframes

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


#### 3.6 Combine different LCAS datasets


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

# 4. Analytics

#### 4.1 Simple, automated analytics

After collecting the data, one of the powerful functions of the LCAS system is to provide automated and quick insights into key drivers and outcomes of agricultural systems at landscape level.

You can look at a <a href="../outputs/reports/LCAS_Report.html" target="_blank">sample report</a> for the India rice datasets of 2017 and 2018. After cleaning the dataset with the above procedures. You may use the following function to generate the same report for your LCAS dataset(s) of interest. 

The code is stored in <a href="https://github.com/AntonUrfels/lcas/blob/gh-pages/code/generate_lcas_report.Rmd" target="_blank">generate_lcas_report.Rmd</a>.


```R
#read in the cleaned LCAS dataset
f <- "data/india_rice_17_18.csv"
df <- read.csv(f)

#run report generation function
generate_lcas_report(df,"outputs/reports/rice_india_17_18_report.html")
```


# 5. Outlier detections

Here we provide scripts that support outlier removal by Trimming, Winsorization, Mahalanobis distance, and Isolation forests.

#### 5.1 Trimming

#### 5.2 Mahalanobis distance

#### 5.3 Isolation forests

# 6. Toolboxes for advanced

#### 6.1 Maxwell's causal forests

#### 6.2 Hari's yield gap analytics

#### 6.3 Sonam's N recs




