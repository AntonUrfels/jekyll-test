#use this function to offset locations variables
#cut down to 1km resolution i.e. two decimals
#then offset by a random number from -10 to 10km.

anonymize_lcas <- function(df) {
  
  offset <- runif(min = -10, max = 10, n = 1)
  df$latitude <- round(df$latitude,2)+round((offset*0.1),2)

  offset <- runif(min = -10, max = 10, n = 1)
  df$longitude <- round(df$longitude,2)+round((offset*0.1),2)
  return(df)
  
}


