# Author: Anton Urfels
# This file helps to reshape the existing LCAS data into clean data formats.
# This includes two steps: 1. Modularization 2. Converting each module into 
# long format.
# The starting point is a wide format where each row corresponds to one 
# crop-season on a household biggest plot.
# We can thus assign arbitrary HH IDs and Plot IDs. In practices, these should
# Be converted to real unique ID's. We are currently working on constructing these.


#Currently, fertilizer applications are the only 'complicated' module where redunant info
#is saved in the variable names and a special cleaning has been implement for this one.


#TODO Allow for reshaping of 'complicated' modules when multiple plots are present.
#TODO Add checks for whether hh_id/plot_id exists.
#TODO Implement additional 'complicated' modules if necesary - e.g. cropcuts, 
#     irrigation applications etc. - in principle any activity that's performed
#     multiple times per season.


# Read in dataset with standard variable names. Sample code  -----------------
# f <- "data/india_rice_17_18.csv"
# df <- read.csv(f)
# f <- "data/dictionary_with_questions.csv"
# dict <- read.csv(f)
# 
# long_lcas(df,dict)

long_lcas <- function(df,dict) {
# load functions ----------------------------------------------------------

# function for finding columns with fertilizer and timing combo
findCols <- function(n_primkey,dress,fert) {
  l <- as.list(n_primkey)
  # l splits this name by underscores "_"
  l <- lapply(l,function(k){strsplit(k, "_")})
  l <- unlist(l,recursive = F)
  keys <- c(0,0)
  k <- 1
  for (i in 1:length(l)) {
    x <- sum(l[[i]] %in% c(dress,fert)) == 2
    if (isTRUE(x)) {
      keys[k] <- i
      k <- k+1
    }
  }
  return(keys)
}


# assign arbitraty HH and Plot ID -----------------------------------------
set.seed(1)

#generate id's one for hh, one for plot, and 1 for sufficient subsetting
#ensure they are all integers. 
rand <- unique(round(runif(nrow(df)*3,min = 100000,max = 999999),0))
observation_number <- nrow(df)
id_n <- length(rand)
id_half <- round(id_n/2,0) #divide pool into two halfs, one for hh one for plot
hh_id_pool <- rand[1:id_half]
plot_id_pool <- rand[(id_half+1):id_n]
hh_id <- sample(hh_id_pool,observation_number)
plot_id <- sample(plot_id_pool,observation_number)
## Assign arbitrary id's to LCAS dataset 
df$hh_id <- hh_id
df$plot_id <- plot_id
library(dplyr)
df <- select(df,hh_id,plot_id,everything())

# loading dictionary ------------------------------------------------------
f <- "data/dictionary_with_questions.csv"
dict <- read.csv(f)
mod_names <- unique(dict$module)

# #currently suppored modules:
# [1] "survey"                        ""                              "respondent"                   
# [4] "location"                      "crop"                          "cropcut"                      
# [7] "landholding"                   "plot_characteristics"          "crop_establishment"           
# [10] "fertility_management"          "detailed_fertility_management" "irrigation_management"        
# [13] "production_constraints"        "weed_and_pest_control"         "harvest"                      
# [16] "household"                     "cost_of_cultivation"           "tracking_ghg_emission"        
# [19] "tracking_technology_change"    "labor_requirement" 

# Survey module section ----------------------------------------------------------
library(reshape2)
#manually define the survey module name
lcas_mod_long <- function(mod_name,df,dict){
  #mod_name <- "survey"
  var_names <- dict[dict$module==mod_name,]$proposed_name
  mod <- df[, c(c(1,2),which(names(df) %in% var_names))]
  mod_long <- melt(mod,
                   id.vars=c("hh_id","plot_id"),
                   measure.vars = c(var_names[var_names %in% names(df)])
  )
  write.csv(mod_long,paste0("outputs/long_db/",mod_name,".csv"))
  return(mod_long)
}

simple <- c("survey", "respondent", "location",
            "crop", "landhold", "plot_characteristics",
            "crop_establishment", "cost_of_cultivation", 
            "production_constraints", "harvest",
            "household", "tracking_ghg_emission", "tracking_technology_change",
            "labor_requirement","fertility management", "weed and pest control",
            "cropcut", "irrigation management")

for (i in simple) {
  assign(i,lcas_mod_long(i,df,dict))
}


# reshape multiple activity modules ---------------------------------------
mod_name <- "detailed_fertility_management"
var_names <- dict[dict$module==mod_name,]$proposed_name
mod <- df[, c(c(1,2),which(names(df) %in% var_names))]
# define key variables ----------------------------------------------------
#fertilizers and timings
fertilizers <- c("urea","mop","gypsum","dap","tsp","npk","npks","ssp","znso4","boron")
timings <- c("basal","td1","td2","td3","td4","td5","td6")
#output df column names
dcnames <- c("hh_id","plot_id", "fertilizer", "application_time", "application_amount")
# create output df --------------------------------------------------------
df_final <- matrix(nrow=0,ncol = length(dcnames))
# prep df of interest -----------------------------------------------------
df <- mod
# Drop unnecessary columns (plot ID and fertilzer source )
#identified cols with applied
l <- as.list(names(df))
l <- lapply(l,function(k){strsplit(k, "_")})
l <- unlist(l,recursive = F)
long_cols <- unlist(lapply(l,function(x) c("amt" %in% x))) | 
  unlist(lapply(l,function(x) c("das" %in% x))) |
  unlist(lapply(l,function(x) c("basal" %in% x))) |
  unlist(lapply(l,function(x) c("hh" %in% x))) |
  unlist(lapply(l,function(x) c("plot" %in% x)))

not_long_cols <- unlist(lapply(l,function(x) c("amt" %in% x))) | 
  unlist(lapply(l,function(x) c("das" %in% x))) |
  unlist(lapply(l,function(x) c("basal" %in% x)))

# add non problematic columns to seperate long format module --------------
df_non <- df[,!not_long_cols]
mod_long <- melt(df_non, id.vars=c("hh_id","plot_id"))
write.csv(mod_long,paste0("outputs/long_db/","detailed_fertilizer",".csv"))
#TOTO ADD the correct code here for making a normal long format.


df <- df[,long_cols]
# put split col names into searchable list --------------------------------
cnames <- colnames(df)
# The column names that are not your primary key as list
columns_not_key <- cnames[which(cnames != "hh_id" & cnames != "plot_id")]
l <- as.list(columns_not_key)
# l splits this name by underscores "_"
l <- lapply(l,function(k){strsplit(k, "_")})
l <- unlist(l,recursive = F)
for (dress in timings) {
  for (fert in fertilizers) {
    print(paste(fert,dress))
    # Detect which fertilizers and timing are of interest ---------------------
    cols <- findCols(columns_not_key,dress,fert)
    if (sum(cols)==0) next
    #Creat new dataframe with key column names --------------------------------
    df1 <- data.frame(matrix(nrow = nrow(df),ncol = length(dcnames)))
    names(df1) <- dcnames
    # add variables to new, long df -------------------------------------------
    df1$hh_id <- df$hh_id
    df1$plot_id <- df$plot_id
    df1$fertilizer <- fert
    if (dress == "basal") {
      df1$application_time <- 0
    }
    if (dress != "basal") { 
      df1$application_time <- df[,ifelse("das" %in% l[[cols[1]]], cols[1],cols[2])]
    }
    df1$application_amount <- df[,ifelse("amt" %in% l[[cols[1]]], cols[1],cols[2])]
    # add to final df ---------------------------------------------------------
    df_final <- rbind(df_final,df1)
  }
}
# remove NA rows ----------------------------------------------------------
df_final <- df_final[!is.na(df_final$application_amount),]
write.csv(df_final,paste0("outputs/long_db/","fertility_applications",".csv"))
}






