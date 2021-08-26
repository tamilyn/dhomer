## code to prepare `sc_walkability_index` dataset goes here

library(janitor)
library(fs)
library(here)
library(sf)
library(dplyr)
library(tigris)

# https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7B251AFDD9-23A7-4068-9B27-A3048A7E6012%7D
# US EPA National Walkability Index for SC Block Groups
# Downloaded 2021-06-28

explorer_fname <- here(path('data-raw'), "raw_natl_wi")
sc_walkability_index1 <- st_read(explorer_fname) %>%
  clean_names() %>%
  select(c('geoid20','nt_wlk_in','geometry')) %>%
  st_drop_geometry() %>%
  rename(GEOID = geoid20)

sc_blocks <- block_groups(state = 45)

sc_walkability_index <- left_join(sc_walkability_index1, sc_blocks, by = 'GEOID') %>%
  select(c('GEOID','nt_wlk_in','INTPTLAT','INTPTLON')) %>%
  rename(block_latitude = INTPTLAT, block_longitude = INTPTLON)


usethis::use_data(sc_walkability_index, overwrite = TRUE)

