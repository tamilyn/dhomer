## code to prepare `superfund_processed` dataset goes here

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

# https://sc-policymap-com.pallas2.tcl.sc.edu/maps
# US EPA South Carolina Superfund Sites
# Downloaded 2021-05-25

explorer_fname <- here(path('data-raw'), "raw_epa_superfund.csv")
superfund <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- superfund %>% geocode(
  street = 'location_address', city = 'city_name', state = 'state_code', postalcode = 'postal_code', method = 'cascade'
)

fwrite(geocodes, file = here(path('data-raw'), 'superfund_primary_processed.csv'))

explorer_fname <- here(path('data-raw'), "superfund_secondary_processed.csv")
superfund <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- superfund %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

superfund_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

superfund_processed <- st_join(superfund_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,1],
                lon = sf::st_coordinates(.)[,2]) %>%
  select(-c('geo_method','intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER',)) %>%
  distinct(cleanup_name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry() %>%
  mutate(frs = substr(frs_link_csv, nchar(frs_link_csv)-11, nchar(frs_link_csv)))

fwrite(superfund_processed, file = here(path('data-raw'), 'superfund_processed.csv'))


usethis::use_data(superfund_processed, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
