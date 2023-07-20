---
layout: default
title: 3. Add calculated variables and geodata
parent: Toolbox
nav_order: 1
---

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
