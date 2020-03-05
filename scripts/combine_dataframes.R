########### Combine Data Frames #################

rm(list=ls())

library(tidyverse)
library(janitor)
library(here)



# Read in data ------------------------------------------------------------

# For question 2, I need the kelp, oceanographic, and urchin abundance data.

urchins <- read.csv(here::here("data","Annual_Invert_RichnessAbundDiversity_2001-2018.csv")) %>%
  dplyr::select(year,month,site,transect,franciscanus.abundance,purpuratus.abundance,urchin.abundance) %>%
  filter(!is.na(urchin.abundance)) %>%
  pivot_longer(cols=c(franciscanus.abundance,purpuratus.abundance,urchin.abundance)) %>%
  group_by(year,month,site,name) %>%
  summarise(urchin.mean=mean(value,na.rm=TRUE)) %>%
  pivot_wider(names_from=name,values_from=urchin.mean)

waterchem <- read.csv(here::here("data","Annual_CTD_WaterChemistry_MeanMax_2000-2018.csv"))
kelp <- read.csv(here::here("data","Annual_Kelp_MeanSize_MeanAbund_2001-2018.csv"))

temp <- read.csv(here::here("data","Seasonal_Mean_Bottom_Temp_2002-2019.csv")) %>%
  dplyr::select(year,site,season,mean.temp,var.temp) %>%
  rename(mean_temp=mean.temp,var_temp=var.temp) %>%
  pivot_longer(cols=c(mean_temp,var_temp)) %>%
  pivot_wider(names_from=c(season,name), values_from=value)

dat2_urchins <- left_join(kelp,urchins,by=c("year","month","site"))
dat2 <- left_join(dat2_urchins,waterchem,by=c("site"="station","year"))
dat2 <- left_join(dat2, temp,by=c("year","site"))


# Filter  -----------------------------------------------------------------

dat2_filtered <- dat2 %>%
  filter(site %in% waterchem$station) %>%
  filter(year > 2001 & year < 2019)



write.csv(dat2_filtered,here::here("data","kelp_prediction_data.csv"), row.names=FALSE)


dat2_filtered2 <- filter(dat2_filtered, !is.na(mean_po4) & !is.na(summer_mean_temp))
write.csv(dat2_filtered2,here::here("data","kelp_prediction_data_complete.csv"), row.names=FALSE)

