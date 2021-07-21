## code to prepare `vehicle_availability` dataset goes here

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
# Percent of Housing Units with No Vehicle Access
# Downloaded 2021-07-07

explorer_fname <- here(path('data-raw'), "raw_vehicle_availability.csv")
vehicles <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45) %>%
  clean_names() %>%
  st_drop_geometry() %>%
  mutate(census_tract = as.double(geoid))

vehicle_availability <- dplyr::left_join(x = vehicles, y = sc_tracts, by = 'census_tract') %>%
  select(-c('statefp','countyfp','tractce','name','namelsad','mtfcc','funcstat','aland','awater', 'geoid')) %>%
  rename(tract_latitude = intptlat, tract_longitude = intptlon, geoid = census_tract)

fwrite(vehicle_availability, file = here(path('data-raw'), 'vehicle_availability.csv'))

usethis::use_data(vehicle_availability, overwrite = TRUE)
