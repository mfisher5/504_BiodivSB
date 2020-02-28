## SBC LTER Regression Input Data

This folder contains edited Santa Barbara Coastal LTER data sets, which have been summarized for regression analysis.


#### Biological Data

Sampling conducted at 8 mainland sites (BULL, CARP, NAPL, AHND, AQUE, IVEE, GOLB, ABUR, MOHK) from 2001-2018. 


**Habitat**

`Annual_Kelp_MeanSize_MeanAbund_2001-2018.csv`: Mean and maximum abundance (fronds / meter, `abund`) and mean and maximum size (holdfast diameter, `hld_diam`) of giant kelp per transect, at each of 8 coastal sites, 2001-2018. Data frame includes the following variables: year (of sampling), month (of sampling), site, transect (replicate), obs_code (person gathering data), sp_code (MPS/MAPY), scientific_name (species name; Macrocystis pyrifera), group (algae)
<br>

**Vertebrate / Invertebrate Communities**

`Annual_Fish_RichnessAbundDiversity_2001-2018.csv`: Fish and Cryptic Benthic Fish community composition, measured using (1) species richness (as a raw count of the number of species and Menhinick's index, `richness` / `menhinick.richness`), (2) species abundance (a raw count of individual fish), and (3) species diversity, using both Simpson's (`div.simpson`) and Shannon's (`div.shannon`) index. Data frame also includes the following variables: year (of sampling), month (of sampling), site, transect (replicate), survey (fish or cryptic fish).


#### Oceanographic Data

`Seasonal_Mean_Bottom_Temp_2002-2019.csv`: Mean, variance, and standard deviation of summer (May - Oct) and winter (Nov - April) water temperature at each sampling site, from 2002-2019. Data frame includes the following variables: site (sampling site), serial (sampling site code), year (sampling year), season (winter / summer), mean.temp (C), var.temp (C), sd.temp (C).

`Annual_CTD_WaterChemistry_MeanMax_2000-2018.csv`: Mean and maximum of water chemistry, from CTD measurements taken 2000-2018 at four of the sampling sites.
