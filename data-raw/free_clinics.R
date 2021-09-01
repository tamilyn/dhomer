## code to prepare `free_clinics` dataset goes here

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

# https://www.scfreeclinics.org/
# South Carolina Free Clinics
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_free_clinics.csv")
clinics <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- clinics %>% geocode(
  street = 'address', method = 'cascade'
)

fwrite(geocodes, file = here(path('data-raw'), 'freeclinics_primary_processed.csv'))

explorer_fname <- here(path('data-raw'), "freeclinics_secondary_processed.csv")
clinics <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

clinics1 <- clinics %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))


free_clinics_unchecked <- st_join(clinics1, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(-c('geo_method','STATEFP','COUNTYFP','TRACTCE','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER','address')) %>%
  distinct(clinic_name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

free_clinics = data.frame()

for (i in 1:nrow(free_clinics_unchecked) ) {
  if(32.0346 <= free_clinics_unchecked$lat[i] && free_clinics_unchecked$lat[i] <= 35.215402 && -83.35391 <= free_clinics_unchecked$lon[i] && free_clinics_unchecked$lon[i] <= -78.54203) {
    free_clinics <- rbind(free_clinics, free_clinics_unchecked[i,])
  }
  else {
    glimpse(free_clinics_unchecked[i,])
  }
}

fwrite(free_clinics, file = here(path('data-raw'), 'freeclinics.csv'))

usethis::use_data(free_clinics, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
