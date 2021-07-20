## code to prepare `recreation` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://www.arcgis.com/home/item.html?id=4f14ea9215d1498eb022317458437d19
# South Carolina Recreational Areas
# Downloaded 2021-06-28

explorer_fname <- here(path('data-raw'), "raw_recreational_areas.csv")
rec <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- rec %>%
  filter(is.na(wkt_geom) == F) %>%
  st_as_sf(wkt = 'wkt_geom', crs = st_crs(sc_tracts))


coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

recreation_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

recreation <- st_join(recreation_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(-c('intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER','stctyfips','mnfc','textlength')) %>%
  distinct(name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()


fwrite(recreation, file = here(path('data-raw'), 'recreation.csv'))

usethis::use_data(recreation, overwrite = TRUE)
