#Script to convert local land units to ha for unified analyses.

calc_llu_to_ha <- function(df) {
  
  i <- df$local_to_acre / 2.471
  df$total_cultivated_land_ha <- df$total_cultivated_land / df$local_to_acre * 0.404
  df$total_crop_cult_area_ha <- df$total_crop_cult_area / df$local_to_acre * 0.404
  df$surveyed_plot_ha <- df$surveyed_plot / df$local_to_acre * 0.404
  return(df)
}