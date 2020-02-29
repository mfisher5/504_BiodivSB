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

summer_temp <- read.csv(here::here("data","Seasonal_Mean_Bottom_Temp_2002-2019.csv")) %>%
  dplyr::select(-serial) %>%
  filter(season=="summer") %>%
  rename("summer.mean.temp"=mean.temp,"summer.var.temp"=var.temp) %>% 
  dplyr::select(-season, -sd.temp)

winter_temp <- read.csv(here::here("data","Seasonal_Mean_Bottom_Temp_2002-2019.csv")) %>%
  dplyr::select(-serial) %>%
  filter(season=="winter") %>%
  rename("winter.mean.temp"=mean.temp,"winter.var.temp"=var.temp) %>% 
  dplyr::select(-season, -sd.temp)

temp <- left_join(summer_temp,winter_temp, by=c("site","year"))

dat2_urchins <- left_join(kelp,urchins,by=c("year","month","site","transect"))
dat2 <- left_join(dat2_urchins,filter(waterchem, target_depth_m==1),by=c("site"="station","year"))
dat2 <- left_join(dat2, temp,by=c("year","site"))
dat2_filtered <- filter(dat2, site %in% waterchem$station)



# Filter  -----------------------------------------------------------------

dat2_filtered <- dat2 %>%
  filter(site %in% waterchem$station) %>%
  filter(year > 2001 & year < 2019) %>%
  dplyr::select(-mean_urea, -max_urea, -max_ammonia,-mean_ammonia)



write.csv(dat2_filtered,here::here("data","kelp_prediction_data.csv"), row.names=FALSE)


dat2_filtered2 <- filter(dat2_filtered, !is.na(mean_po4))
write.csv(dat2_filtered2,here::here("data","kelp_prediction_data_complete.csv"), row.names=FALSE)

