# Author: Anton Urfels
# Date : July 2023
# Objective: serves to rename lcas variables from custom to standard using
# a dictionary


rename_lcas <- function(dict,df) {
  
  a <- dict$old_name
  b <- dict$proposed_name
  c <- colnames(df)
  
  i <- match(a,c)
  
  standard_names <- replace(c,na.omit(i),b[na.omit(i)])
  colnames(df) <- standard_names
  return(df)
}

