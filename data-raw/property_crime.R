## code to prepare `property_crime` dataset goes here

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
# South Carolina 2019 Property Crime Statistics
# Downloaded 2021-06-29

explorer_fname <- here(path('data-raw'), "raw_sc_property_crime.csv")
property <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_counties <- counties(state = 45) %>%
  clean_names() %>%
  mutate(county = namelsad) %>%
  st_drop_geometry()

property_crime <- dplyr::left_join(x = property, y = sc_counties, by = 'county') %>%
  select(-c('statefp','countyfp','countyns','lsad','name','namelsad','classfp','mtfcc','csafp','cbsafp','metdivfp','funcstat','aland','awater')) %>%
  rename(county_latitude = intptlat, county_longitude = intptlon)

fwrite(property_crime, file = here(path('data-raw'), 'property_crime_processed.csv'))

usethis::use_data(property_crime, overwrite = TRUE)
