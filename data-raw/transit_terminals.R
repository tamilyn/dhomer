## code to prepare `transit_terminals` dataset goes here

library(sf)
library(tigris)
library(here)
library(janitor)
library(dplyr)
library(data.table)

# https://hifld-geoplatform.opendata.arcgis.com/datasets/intermodal-passenger-connectivity-database-ipcd/explore?location=45.502900%2C58.184500%2C3.70
# South Carolina Intermodal Passenger Transportation Terminals
# Downloaded 2021-07-13

explorer_fname <- here(path('data-raw/raw_sc_intermodal_passenger_connectivity'), 'raw_sc_intermodal_passenger_connectivity.shp')
raw_transit <- st_read(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- raw_transit %>%
  filter(is.na(geometry) == F) %>%
  st_as_sf(wkt = 'geometry') %>%
  st_transform(crs = 4269)

system.time({
  intersected <- st_within(coords, sc_tracts)
})

transit <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))


transit_terminals <- st_join(transit, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(-c('intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER',)) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

fwrite(transit_terminals, file = here(path('data-raw'), 'sc_intermodal_passenger_terminals.csv'))

usethis::use_data(transit_terminals, overwrite = TRUE)
