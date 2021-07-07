## code to prepare `internet_access` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://ephtracking.cdc.gov/DataExplorer/
# Percent of Households with No Internet Access
# Downloaded 2021-07-07

explorer_fname <- here(path('data-raw'), "raw_internet_access.csv")
internet <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45) %>%
  clean_names() %>%
  st_drop_geometry() %>%
  mutate(census_tract = as.double(geoid))

internet_access <- dplyr::left_join(x = internet, y = sc_tracts, by = 'census_tract') %>%
  select(-c('statefp','countyfp','tractce','name','namelsad','mtfcc','funcstat','aland','awater', 'geoid')) %>%
  rename(county_latitude = intptlat, county_longitude = intptlon, geoid = census_tract)

fwrite(internet_access, file = here(path('data-raw'), 'internet_access_processed.csv'))

usethis::use_data(internet_access, overwrite = TRUE)
