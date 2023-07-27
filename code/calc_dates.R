# this function create DOY variables for dates for standard lcas

library(lubridate)

doy <- function(x) {
  yday(as.Date(x,"%d-%m-%Y"))
}


calc_dates <- function(df) {
  
  df$harvest_date_doy <- doy(df$harvest_date) 
  df$transplanting_date_doy <- doy(df$transplanting_date)  
  df$prev_crop_harvest_date <- as.Date(df$prev_crop_harvest,"%Y-%m-%d") #TODO fix this to have same strcuture as other dates
  df$prev_crop_harvest_date_doy <- yday(df$prev_crop_harvest_date)
  return(df)
}


