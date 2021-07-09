## code to prepare `tri` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://enviro.epa.gov/facts/tri/form_ra_download.html
# Toxic Release Inventory Form R and A Submissions
# 07-07-2021

explorer_fname <- here(path('data-raw'), "raw_tri.csv")
tri <- readr::read_csv(explorer_fname) %>%
  clean_names()

colnames(tri)<- gsub("v_tri_form_r_ez.","",colnames(tri))

sc_tracts <- tracts(state = 45)

coords <- tri %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

system.time({
  intersected <- st_within(coords, sc_tracts)
})

tri_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

tri_processed <- st_join(tri_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(-c('intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER',)) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()


fwrite(tri_processed, file = here(path('data-raw'), 'sc_tri_sites.csv'))


usethis::use_data(tri, overwrite = TRUE)
