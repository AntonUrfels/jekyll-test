# Author: Anton Urfels
# This file helps to reshape the existing LCAS data into clean data formats.
# This includes two steps: 1. Modularization 2. Converting each module into 
# long format.
# The starting point is a wide format where each row corresponds to one 
# crop-season on a household biggest plot.
# We can thus assign arbitrary HH IDs and Plot IDs. In practices, these should
# Be converted to real unique ID's. We are currently working on constructing these.

# Read in dataset with standard variable names. 
f <- "data/india_rice_17_18.csv"
df <- read.csv(f)

# assign arbitraty HH and Plot ID
set.seed(1)

#generate id's one for hh, one for plot, and 1 for sufficient subsetting
#ensure they are all integers. 
rand <- unique(round(runif(nrow(df)*3,min = 100000,max = 999999),0))
# sample from the first half
hh_id <- sample(rand[1:nrow(rand)/2])


