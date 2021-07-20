## code to prepare `hospitals` dataset goes here

library(sf)
library(tigris)
library(here)
library(janitor)
library(dplyr)
library(data.table)

# https://hifld-geoplatform.opendata.arcgis.com/datasets/hospitals/explore
# South Carolina Hospitals
# Downloaded 2021-07-13

explorer_fname <- here(path('data-raw/raw_sc_hospitals'), 'raw_sc_hospitals.shp')
raw_hospitals <- st_read(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- raw_hospitals %>%
  filter(is.na(geometry) == F) %>%
  st_as_sf(wkt = 'geometry') %>%
  st_transform(crs = 4269)

system.time({
  intersected <- st_within(coords, sc_tracts)
})

hospitals <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))


hospitals <- st_join(hospitals, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('id','name','telephone','trauma','geoid','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

fwrite(hospitals, file = here(path('data-raw'), 'sc_hospitals.csv'))

usethis::use_data(hospitals, overwrite = TRUE)
