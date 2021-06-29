## code to prepare `violent_crime` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://www.sled.sc.gov/forms/statistics/2019%20Crime%20in%20South%20Carolina.pdf
# South Carolina 2019 Violent Crime Statistics
# Downloaded 2021-06-29

explorer_fname <- here(path('data-raw'), "raw_sc_violent_crime.csv")
violent <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_counties <- counties(state = 45) %>%
  clean_names() %>%
  mutate(county = namelsad) %>%
  st_drop_geometry()

violent_crime <- dplyr::left_join(x = violent, y = sc_counties, by = 'county') %>%
  select(-c('statefp','countyfp','countyns','lsad','name','namelsad','classfp','mtfcc','csafp','cbsafp','metdivfp','funcstat','aland','awater')) %>%
  rename(county_latitude = intptlat, county_longitude = intptlon)

fwrite(violent_crime, file = here(path('data-raw'), 'violent_crime_processed.csv'))

usethis::use_data(violent_crime, overwrite = TRUE)
