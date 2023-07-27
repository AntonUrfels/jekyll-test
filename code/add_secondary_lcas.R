# Function to add Geo-variables 
library(rio)
library(sp)
library(sf)
library(terra)
library(geodata)

# Read in dataset with standard variable names. Sample code  -----------------
# f <- "data/india_rice_17_18.csv"
# df <- read.csv(f)
# f <- "data/dictionary_with_questions.csv"
# dict <- read.csv(f)
# add_secondary_lcas(df)


add_secondary_lcas <- function (df) {
  # Remove duplicates and NAs in geo-coordinates
#  df=subset(df,!(duplicated(df$longitude)))
#  df=subset(df,!(duplicated(df$longitude)))
  df_sp= SpatialPointsDataFrame(cbind(df$longitude,df$latitude),data=df,proj4string=CRS("+proj=longlat +datum=WGS84"))
  df_sf=st_as_sf(df_sp)
  population=population(2020,05,path=tempdir())
  population_geodata=terra::extract(population,vect(df_sf),fun=mean,df=TRUE)
  elevationglobal_geodata=elevation_global(0.5,path=tempdir())
  elevation_geodata=terra::extract(elevationglobal_geodata,vect(df_sf),fun=mean,df=TRUE)
  
  # Merge all soils and population
  geodata_df <- list(population_geodata,elevation_geodata)
  geodata_df=Reduce(function(x, y) merge(x, y, all=TRUE),geodata_df)
  return(geodata_df)
  #write.csv(geodata_df,paste0("outputs/temp/geovariables",".csv"))
}

