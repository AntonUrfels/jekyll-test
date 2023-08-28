# Calculate yield in a standard LCAS dataset

calc_yield <- function(df) {
  
  i <- 10 # for quintal #TODO add manual choice for different units here. Potentially integrate like LLU into survey.
  df$total_production_lp_ton <- df$total_production_lp / i
  df$total_production_farm_ton <- df$total_production_farm / i
  
  df$yield_lp_t_ha <- df$total_production_lp_ton / df$surveyed_plot_ha
  df$yield_farm_t_ha <- df$total_production_farm_ton / df$total_crop_cult_area_ha
  
  return(df)
}