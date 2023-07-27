# function for LCAS to calculate fert rates per ha
# - Urea: (46-0-0)
# - NPK: (12-32-16)
# - DAP: (18-46-0)
# - TSP: (0-45-0)
# - MOP: (0-0-49)
# - Boron: B=20
# - Gypsum Ca=23 S=19
# - SSP: P=(15), S=(11) and Ca=(21)
# - ZnSO4: Zn=(23) S=(11)
# - NPKS: (20-20-0-13)

calc_fert_rate <- function(df) {
  
  i <- df$surveyed_plot_ha
  
  df$n_rate <- (df$total_urea_applied * 0.46) +
                (df$total_npk_applied * 0.12) + 
                (df$total_dap_applied * 0.18) +
                (df$total_tsp_applied * 0) +
                (df$total_npks_applied * 0.2)
  
  df$n_rate <- df$n_rate / i
  
  df$p_rate <- (df$total_urea_applied * 0) +
                (df$total_npk_applied * 0.32) + 
                (df$total_dap_applied * 0.46) +
                (df$total_tsp_applied * 0) +
                (df$total_ssp_applied * 0.15) +
                 (df$total_npks_applied * 0.2) 
  
  df$n_rate <- df$p_rate / i
              
  df$k_rate <- (df$total_urea_applied * 0) +
                (df$total_npk_applied * 0.16) + 
                (df$total_dap_applied * 0) +
                (df$total_tsp_applied * 0) +
                (df$total_mop_applied * 0.49) + 
                (df$total_npks_applied * 0)
  
  df$k_rate <- df$k_rate / i
              
 
  df$b_rate <- df$total_boron_applied * 0.20
  
  df$b_rate <- df$n_rate / i
  
  df$ca_rate <- (df$total_gypsum_applied * 0.23) +
                  (df$total_ssp_applied * 0.21)
  
  df$ca_rate <- df$ca_rate / i
  
  df$s_rate <- (df$total_gypsum_applied * 0.19) +
                (df$total_ssp_applied * 0.11) +
                (df$total_znso4_applied * 0.11) +
                (df$total_npks_applied * 0.13)
  
  df$s_rate <- df$s_rate / i
  
  df$zn_rate <- df$total_znso4_applied * 0.23
  
  df$zn_rate <- df$zn_rate / i
  
  return(df)
}