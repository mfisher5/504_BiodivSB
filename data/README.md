## SBC LTER Regression Input Data

This folder contains edited Santa Barbara Coastal LTER data sets, which have been summarized for regression analysis.

Sampling for fish, invertebrate, and kelp community data was conducted at 8 mainland sites (BULL, CARP, NAPL, AHND, AQUE, IVEE, GOLB, ABUR, MOHK) from 2000-2019. 

Temperature data was available for all 8 mainland sites, from 2002-2019. 

Water chemistry data was available for only 4 mainland sites (CARP,NAPL,AQUE,MOHK) from 2000-2018. However, the first year was missing a lot of data, so we only use 2001-2018. Data from MOHK is periodic, and not available for every year.

Our final combined biological / oceanographic data sets are for four mainland sites (CARP,NAPL,AQUE,MOHK) from 2002-2018. 


### Final Data Sets for Modeling

**Question 1**:  How does giant kelp size and abundance (response) vary according to oceanographic conditions and herbivore abundance (predictor)?

`kelp_prediction_data.csv`: data from 4 mainland sites, 2002-2018.

`kelp_prediction_data_complete.csv`: data from 4 mainland sites, 2002-2018, *with no missing data*.

The data frames include the following variables:

1. Response: kelp mean and maximum abundance (`MAPY_mean_count, MAPY_mean_density`) and kelp mean and maximum size (`MAPY_mean_fronds, MAPY_max_fronds, MAPY_mean_hld, MAPY_max_hld`)

2. Predictors - Urchins: red (`franciscanus.abundance`), purple (`purpuratus.abundance`), and total (`urchin.abundance`) sea urchin abundance.

3. Predictors - Water Chemistry: the annual maximums (`max_`) and means (`mean_`) for the following: ammonia (`ammonia`), nitrogen (`no2_no3`), phosphorus (`po4`), particulate organic carbon (`poc`), particulate organic nitrogen (`pon`), total chlorophyll (`tchl`). 

4. Predictors - Water Temperature: the winter and summer mean temperature (`winter_mean_temp / summer_mean_temp`), and variance in temperature (`winter_var_temp / summer_var_temp`). 


**Question 2**:  How does fish / invertebrate community abundance and diversity (response) vary according to giant kelp size and abundance, and oceanographic conditions (predictor)?

`biomass_prediction_data_waterchem.csv`: data from 4 mainland sites, 2002-2018. 

`biomass_prediciton_data_waterchem_complete.csv`: data from 4 mainland sites, 2002-2018, *with no missing data*.

The data frames include the following variables:

1. Response: the total biomass (`total_biomass`) and Simpson's taxon diversity (`diversity`) for fish (`fish`), invertebrates (`invert`), and non-kelp algae (`algae`).

2. Predictors - Kelp: total biomass of kelp (`kelp_total_biomass`).

3. Predictors - Water Chemistry: the annual maximums (`max_`) and means (`mean_`) for the following: ammonia (`ammonia`), nitrogen (`no2_no3`), phosphorus (`po4`), particulate organic carbon (`poc`), particulate organic nitrogen (`pon`), total chlorophyll (`tchl`). 

4. Predictors - Water Temperature: the winter and summer mean temperature (`winter_mean_temp / summer_mean_temp`), and variance in temperature (`winter_var_temp / summer_var_temp`). 



### Intermediate Data Sets

`Annual_Kelp_MeanSize_MeanAbund_2001-2018.csv`: Mean abundance (`count` and `density` / m^2) and mean and maximum size (holdfast diameter, `hld`, fronds, `fronds`) of giant kelp at each of 8 coastal sites, 2001-2018. Only for adult kelp (sp_code=MAPY). Data frame includes the following variables: year (of sampling), month (of sampling), site
<br>

`Annual_Fish_RichnessAbundDiversity_2001-2018.csv`: Fish and Cryptic Benthic Fish community composition, measured using (1) species richness (as a raw count of the number of species and Menhinick's index, `richness` / `menhinick.richness`), (2) species abundance (a raw count of individual fish), and (3) species diversity, using both Simpson's (`div.simpson`) and Shannon's (`div.shannon`) index. Data frame also includes the following variables: year (of sampling), month (of sampling), site, transect (replicate), survey (fish or cryptic fish).
<br>

`all_biomass_metrics_bysite`: Fish, Invertebrate, and non-kelp Algae total and mean biomass per site. 
<br>

`Seasonal_Mean_Bottom_Temp_2002-2019.csv`: Mean, variance, and standard deviation of summer (May - Oct) and winter (Nov - April) water temperature at each sampling site, from 2002-2019. Data frame includes the following variables: site (sampling site), year (sampling year), season (winter / summer), mean.temp (C), var.temp (C), sd.temp (C).
<br>

`Annual_CTD_WaterChemistry_MeanMax_2000-2018.csv`: Mean and maximum of water chemistry, from CTD measurements taken 2000-2018 at four of the sampling sites.
<br>
