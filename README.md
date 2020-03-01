# CS&SS 504: Biodiversity of the Santa Barbara Channel

This is the Github repository for CS&SS 504 Class Project, Group 5.
<br>

**Collaborators: Tim Xi, Yichao Wang, Mary Fisher**
<br>
<br>

## Class Project Guidelines

The group project consists of carrying out a thorough regression analysis of a data set of your choice, for which linear or logistic regression is appropriate. The main aim is to do a good analysis.

The components of the project are as follows:

1. Finding data sets and setting up project groups.
2. A  short in-class presentation (7-10 minutes depending on the number of projects) of your chosen topic on the assigned dates (check the schedules and announcements). Counts for 15%. 
3. Feedback from 2 peer groups will be worth 5%. 
4. Final poster presentation 15%. Poster presentations will take place during the scheduled final exam slot at a location to be announced later.
<br>
<br>

## Group 5 Project Background & Goal

This projects explore changes in a California marine ecosystem and relates those changes to ocean conditions, by taking advantage of the extensive publicly-available data sets collected by the Santa Barbara Channel Long-Term Ecological Research (LTER) program. 

Marine ecosystems are subject to natural variability in environmental conditions, such as the El Niño-Southern Oscillation, as well as a variety of anthropogenic pressures including climate change and coastal development. Long-term data sets are critical for understanding how marine ecosystems change – or do not change – over time and space. The Santa Barbara Channel is a particularly interesting location for analyzing temporal changes in marine ecosystems because it is a transition zone between the cold waters of the California Current and the warmer waters of Southern California. This results in a high diversity of marine organisms that are strongly influenced by the physical and chemical characteristics of the water. 

### Research Questions

How does giant kelp size and abundance (response) vary according to oceanographic conditions and herbivore abundance (predictor)?

How does fish / invertebrate abundance and community diversity (response) vary according to giant kelp size and abundance, and oceanographic conditions (predictor)?
<br>

### Variables

All variables are aggregated to the site level; kelp data is also provided for individual replicates (transects) per site. 

**Habitat**

Kelp Abundance: Kelp fronds per meter, by transect (replicate) and site.

Kelp Size: Diameter of the kelp holdfast, by transect (replicate) and site. *Only measured for large observed individuals with holdfast > 20cm*

Kelp Biomass: Biomass is used as an alternative index to abundance. The SBC LTER team used annual abundance (above) and converted it to biomass (dry mass in grams) using published taxon-specific algorithms. We wanted to include this data, because it was compiled to the site level by researchers more familiar with the raw survey data set. As a result, there may have been more quality control conducted during the data processing, that makes this data set a more accurate description of actual site conditions.
<br>

**Water Temperature and Quality**

Seasonal Mean Bottom Temperature: mean bottom temperature during the summer and winter seasons (celsius). Kelp are traditionally a cold-water species, and so long-term climate change (affecting both winter and summer temperatures) and marine heatwaves (affecting summer temperatures) could have an impact on abundance and growth.

Seasonal Variance in Bottom Temperature: variance in bottom temperature during the summer and winter seasons (celsius). Marine species tend to be adapted to a specific thermal range, and may not be able to adjust to large variations in temperature over short periods of time. 

Annual Water Chemistry: annual mean and maximum of select nutrients. Like other primary producers, kelp rely on uptake of nutrients from the surrounding environment to grow. The nutrients available in this data set were: nitrogen (umol/l), phosphorus (umol/l), particulate organic carbon or poc (umol/l), particulate organic nitrogen or pon (umol/l), and ammonia (umol/l). We also included an index of primary productivity in the water, total chlorophyll (umol/l). 
<br>

**Vertebrate / Invertebrate Community** 

Urchin Abundance: number of individual urchins. Urchins are herbivores that eat kelp; while they are important to maintaining the balance of an ecosystem, when their population sizes are too large, they can decimate kelp forests. 

Fish, Invertebrate, and Algae Total Biomass: Biomass is used as an alternative index to abundance. The SBC LTER team used annual abundance (above) and converted it to biomass (dry mass in grams) using published taxon-specific algorithms. We then calculated the total biomass across all fish species, all invertebrate species, and all algae species (not including kelp). 

Fish, Invertebrate, and Algae Diversity: Ecologists are often interested not just in the abundance of organisms, but also how diverse they are. We used total biomass per order to calculate fish, invertebrate, and non-kelp algae diversity, with Simpson's diversity index. Simpson's index (0-1) is a measure of diversity which takes into account the number of species present, as well as the relative abundance of each species. As species abundance and evenness increase, diversity increases. It can also be thought of as the probability that two individuals randomly selected from a sample will belong to the same species. We use the inverse of the index, so that as diversity increases, so does the index value.



#### Potential Covariates 

Site: Sampling site. There are eight coastal sites included in this data set. 

Year: Year of sampling. In the data, sampling was conducted from 2001-2018. 

<br>
<br>
<br>
<br>
<br>

---



#### Additional Notes

We also calculated the following indices for the fish and invertebrate communities from the raw survey data, but ultimately did not use them in our linear models.


Fish / Invertebrate Species Richness: The number of different fish species present, by transect (replicate) and site. Calculated as: Richness = number of species / sqrt(number of individuals)

Fish / Invertebrate Species Abundance: Number of individual fish species present, by transect (replicate) and site.

Fish / Invertebrate Species Diversity: Diversity of fish species present, by transect (replicate) and site. Calculated as: Shannon index = ∑ (pl) |ln pl|, Where (pl) is the proportion of the total number of individuals in the population that are in species “l”.









