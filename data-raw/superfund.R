## code to prepare `superfund` dataset goes here

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
superfund1 <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- superfund1 %>% geocode(
  street = 'location_address', city = 'city_name', state = 'state_code', postalcode = 'postal_code', method = 'cascade'
)

fwrite(geocodes, file = here(path('data-raw'), 'superfund_primary_processed.csv'))

explorer_fname <- here(path('data-raw'), "superfund_secondary_processed.csv")
superfund2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- superfund2 %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))

system.time({
  intersected <- st_within(coords, sc_tracts)
})

superfund_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

superfund_unchecked <- st_join(superfund_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  mutate(superfund_id = sub('.*=','',superfund_link_csv)) %>%
  mutate(frs = substr(frs_link_csv, nchar(frs_link_csv)-11, nchar(frs_link_csv))) %>%
  select(c('cleanup_name','epa_id','superfund_id','frs','geoid','INTPTLAT','INTPTLON','lat','lon')) %>%
  distinct(cleanup_name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

superfund = data.frame()

for (i in 1:nrow(superfund_unchecked) ) {
  if(32.0346 <= superfund_unchecked$lat[i] && superfund_unchecked$lat[i] <= 35.215402 && -83.35391 <= superfund_unchecked$lon[i] && superfund_unchecked$lon[i] <= -78.54203) {
    superfund <- rbind(superfund, superfund_unchecked[i,])
  }
  else {
    glimpse(superfund_unchecked[i,])
  }
}

fwrite(superfund, file = here(path('data-raw'), 'sc_superfund_sites.csv'))


usethis::use_data(superfund, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
