## code to prepare `fooddeserts_processed` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# SC Food Deserts
# https://www.ers.usda.gov/data-products/food-access-research-atlas/download-the-data/
# Downloaded 2021-06-28

explorer_fname <- here(path('data-raw'), "raw_sc_food_deserts.csv")
deserts <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

fooddeserts_processed <- deserts %>% mutate(GEOID = as.character(census_tract))

fooddeserts_processed <- inner_join(fooddeserts_processed, sc_tracts, by = 'GEOID') %>%
  select(-c('STATEFP','COUNTYFP','TRACTCE','geometry','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER','GEOID')) %>%
  distinct(census_tract, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON)

fwrite(fooddeserts_processed, file = here(path('data-raw'), 'fooddeserts_processed.csv'))

usethis::use_data(fooddeserts_processed, overwrite = TRUE)
