## code to prepare `brownfields` dataset goes here

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
library(stringr)

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
brownfields1 <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- brownfields1 %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))


brownfields_unchecked <- st_join(coords, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  mutate(frs_id = substr(frs_link_csv, nchar(frs_link_csv)-11, nchar(frs_link_csv))) %>%
  mutate(brownfields_id = sub('.*:','',brownfields_link_csv)) %>%
  select(c('cleanup_name','brownfields_id','frs_id','GEOID','INTPTLAT','INTPTLON','lat','lon')) %>%
  distinct(cleanup_name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

brownfields = data.frame()

for (i in 1:nrow(brownfields_unchecked) ) {
  if(32.0346 <= brownfields_unchecked$lat[i] && brownfields_unchecked$lat[i] <= 35.215402 && -83.35391 <= brownfields_unchecked$lon[i] && brownfields_unchecked$lon[i] <= -78.54203) {
    brownfields <- rbind(brownfields, brownfields_unchecked[i,])
  }
  else {
    glimpse(brownfields_unchecked[i,])
  }
}

fwrite(brownfields, file = here(path('data-raw'), 'brownfields.csv'))

usethis::use_data(brownfields, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
