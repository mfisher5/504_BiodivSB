# CS&SS 504: Biodiversity of the Santa Barbara Channel

This is the Github repository for CS&SS 504 Class Project, Group 5.
<br>

**Collaborators: Tim Xi, Yichao Wang, Mary Fisher**
<br>
<br>

### Class Project Guidelines

The group project consists of carrying out a thorough regression analysis of a data set of your choice, for which linear or logistic regression is appropriate. The main aim is to do a good analysis.

The components of the project are as follows:

1. Finding data sets and setting up project groups.
2. A  short in-class presentation (7-10 minutes depending on the number of projects) of your chosen topic on the assigned dates (check the schedules and announcements). Counts for 15%. 
3. Feedback from 2 peer groups will be worth 5%. 
4. Final poster presentation 15%. Poster presentations will take place during the scheduled final exam slot at a location to be announced later.
<br>
<br>

### Group 5 Project Background & Goal

This projects explore changes in a California marine ecosystem and relates those changes to ocean conditions, by taking advantage of the extensive publicly-available data sets collected by the Santa Barbara Channel Long-Term Ecological Research (LTER) program. 

Marine ecosystems are subject to natural variability in environmental conditions, such as the El Niño-Southern Oscillation, as well as a variety of anthropogenic pressures including climate change and coastal development. Long-term data sets are critical for understanding how marine ecosystems change – or do not change – over time and space. The Santa Barbara Channel is a particularly interesting location for analyzing temporal changes in marine ecosystems because it is a transition zone between the cold waters of the California Current and the warmer waters of Southern California. This results in a high diversity of marine organisms that are strongly influenced by the physical and chemical characteristics of the water. 

#### Research Questions

How does giant kelp size and abundance (response) vary according to oceanographic conditions and herbivore abundance (predictor)?

How does fish / invertebrate community abundance and diversity (response) vary according to giant kelp size and abundance, and oceanographic conditions (predictor)?

#### Variables

All variables are aggregated to the site level; kelp data is also provided for individual replicates (transects) per site. 

**Habitat**

Kelp Abundance: Kelp fronds per meter, by transect (replicate) and site.

Kelp Size: Diameter of the kelp holdfast, by transect (replicate) and site. *Only measured for large observed individuals with holdfast > 20cm*

Kelp Biomass: biomass is used as an index of abundance. Abundance was measured annually and converted to biomass (dry mass in grams) using published taxon-specific algorithms.

**Water Temperature and Quality**

Seasonal Bottom Temperature: mean and variance of bottom temperature during the summer and winter seasons (celsius). 

Annual Water Chemistry: annual mean and maximum of nitrogen (umol/l), phosphorus (umol/l), particulate organic carbon or poc (umol/l), particulate organic nitrogen or pon (umol/l), ammonia (umol/l), and total chlorophyll (umol/l). 

**Vertebrate / Invertebrate Community** 

Urchin Abundance: number of individuals, by transect (replicate) and site. Urchins are herbivores that eat kelp; they have played a large role in the decline of kelp forests. 




#### Potential Covariates 

Site: Sampling site. There are eight coastal sites included in this data set. 

Year: Year of sampling. In the data, sampling was conducted from 2001-2018. 

Month: Month the survey was conducted. 

Observer: Who conducted the survey. 


<br>
<br>
<br>
<br>
<br>

---

We also calculated the following indices for the fish and invertebrate communities, but ultimately did not use them in our linear models.


Fish / Invertebrate Species Richness: The number of different fish species present, by transect (replicate) and site. Calculated as: Richness = number of species / sqrt(number of individuals)

Fish / Invertebrate Species Abundance: Number of individual fish species present, by transect (replicate) and site.

Fish / Invertebrate Species Diversity: Diversity of fish species present, by transect (replicate) and site. Calculated as: Shannon index = ∑ (pl) |ln pl|, Where (pl) is the proportion of the total number of individuals in the population that are in species “l”.

Fish / Invertebrate Taxon Diversity: Diversity of the orders of fishes present, by transect (replicate) and site. The same indices were used as above.









