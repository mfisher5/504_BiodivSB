########### Combine Data Frames #################

rm(list=ls())

library(tidyverse)
library(janitor)
library(here)



# Read in data ------------------------------------------------------------

# For question 2, I need the kelp, oceanographic, and urchin abundance data.

urchins <- read.csv(here::here("data","Annual_Invert_RichnessAbundDiversity_2001-2018.csv")) %>%
  dplyr::select(year,month,site,transect, franciscanus.abundance,purpuratus.abundance,urchin.abundance) %>%
  distinct()
waterchem <- read.csv(here::here("data","Annual_CTD_WaterChemistry_MeanMax_2000-2018.csv"))
kelp <- read.csv(here::here("data","Annual_Kelp_MeanSize_MeanAbund_2001-2018.csv")) %>%
  dplyr::select(-scientific_name, -group)

dat2_urchins <- left_join(kelp,urchins,by=c("year","month","site","transect"))
dat2 <- left_join(dat2_urchins,filter(waterchem, target_depth_m==1),by=c("site"="station","year"))
dat2_filtered <- filter(dat2, site %in% waterchem$station)

write.csv(dat2_filtered,here::here("data","kelp_prediction_data.csv"), row.names=FALSE)
