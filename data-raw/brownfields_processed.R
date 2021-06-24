## code to prepare `brownfields_processed` dataset goes here

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

# https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::
# US EPA Brownfields
# Downloaded 2021-06-22

explorer_fname <- here(path('data-raw'), "raw_epa_brownfields.csv")
sites <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- sites %>% geocode(
  street = 'location_address', city = 'city_name', state = 'state_code', postalcode = 'postal_code', method = 'cascade'
)

fwrite(geocodes, file = here(path('data-raw', 'brownfields_primary_processed.csv')))

explorer_fname <- here(path('data-raw'), "brownfields_secondary_processed.csv")
brownfields <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- brownfields %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

brownfields_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                        sc_tracts$GEOID[intersection]))

brownfields_processed <- st_join(brownfields_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,1],
                lon = sf::st_coordinates(.)[,2]) %>%
  select(-c('geo_method','intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER',)) %>%
  distinct(cleanup_name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()


fwrite(brownfields_processed, file = here(path('data-raw'), 'brownfields_processed.csv'))

usethis::use_data(brownfields_processed, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
