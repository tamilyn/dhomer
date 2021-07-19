## code to prepare `food_deserts` dataset goes here

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

food_deserts <- inner_join(fooddeserts_processed, sc_tracts, by = 'GEOID') %>%
  select(c('census_tract','lila_tracts_1and10','lila_tracts_half_and10','lila_tracts_1and20',
           'low_income_tracts','poverty_rate','median_family_income','GEOID','INTPTLAT','INTPTLON')) %>%
  distinct(census_tract, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON)

fwrite(food_deserts, file = here(path('data-raw'), 'food_deserts.csv'))

usethis::use_data(food_deserts, overwrite = TRUE)
