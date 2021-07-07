## code to prepare `markets_processed` dataset goes here

library(tidygeocoder)
library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/cdb563626aaf4477b7ea591fec10a3e2_0/explore
# South Carolina Farmers and Roadside Markets
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_farmers_markets_and_roadside_markets.csv")
markets <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- markets %>% geocode(
  street = 'street', city = 'city', state = 'state', postalcode = 'zip', method = 'cascade'
)

fwrite(geocodes, file = here(path('data-raw', 'markets_primary_processed.csv')))

explorer_fname <- here(path('data-raw'), "markets_secondary_processed.csv")
markets <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- markets %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

markets_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

markets_processed <- st_join(markets_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(-c('geo_method','intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER',)) %>%
  distinct(name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()


fwrite(markets_processed, file = here(path('data-raw'), 'markets_processed.csv'))

usethis::use_data(markets_processed, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
