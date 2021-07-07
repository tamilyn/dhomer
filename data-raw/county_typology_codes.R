## code to prepare `county_typology_codes` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://www.ers.usda.gov/data-products/county-typology-codes/
# SC County Typology Codes of Social and Economic Characteristics
# Downloaded 2021-07-07

explorer_fname <- here(path('data-raw'), "raw_sc_typology_codes.csv")
typology <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_counties <- counties(state = 45) %>%
  clean_names() %>%
  mutate(county_name = namelsad) %>%
  st_drop_geometry()

county_typology_codes <- dplyr::left_join(x = typology, y = sc_counties, by = 'county_name') %>%
  select(-c('statefp','countyfp','countyns','lsad','name','namelsad','classfp','mtfcc','csafp','cbsafp','metdivfp','funcstat','aland','awater')) %>%
  rename(county_latitude = intptlat, county_longitude = intptlon)

fwrite(county_typology_codes, file = here(path('data-raw'), 'sc_typology_codes_processed.csv'))

usethis::use_data(county_typology_codes, overwrite = TRUE)
