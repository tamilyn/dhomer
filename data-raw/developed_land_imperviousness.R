## code to prepare `developed_land_imperviousness` dataset goes here

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
# Average Percent of Land with Developed Imperviousness
# Downloaded 2021-07-07

explorer_fname <- here(path('data-raw'), 'raw_developed_imperviousness.csv')
development <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45) %>%
  clean_names() %>%
  st_drop_geometry() %>%
  mutate(census_tract = as.double(geoid))

developed_land_imperviousness <- dplyr::left_join(x = development, y = sc_tracts, by = 'census_tract') %>%
  select(-c('statefp','countyfp','tractce','name','namelsad','mtfcc','funcstat','aland','awater', 'geoid')) %>%
  rename(tract_latitude = intptlat, tract_longitude = intptlon, geoid = census_tract)

fwrite(developed_land_imperviousness, file = here(path('data-raw'), 'developed_imperviousness.csv'))

usethis::use_data(developed_land_imperviousness, overwrite = TRUE)
