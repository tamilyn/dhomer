## code to prepare `healthfacilities_processed` dataset goes here

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

# https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore
# South Carolina Health Facilities
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_all_health_facilities.csv")
facilities <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

facilities0 <- facilities %>%
  filter(is.na(x) == F & is.na(y) == F) %>%
  st_as_sf(coords = c('x', 'y'), crs = st_crs(sc_tracts))

health_facilities_unchecked <- st_join(facilities0, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('permit_type','name_of_facility','GEOID','INTPTLAT','INTPTLON','lat','lon')) %>%
  distinct(name_of_facility, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

health_facilities = data.frame()

for (i in 1:nrow(health_facilities_unchecked) ) {
  if(32.0346 <= health_facilities_unchecked$lat[i] && health_facilities_unchecked$lat[i] <= 35.215402 && -83.35391 <= health_facilities_unchecked$lon[i] && health_facilities_unchecked$lon[i] <= -78.54203) {
    health_facilities <- rbind(health_facilities, health_facilities_unchecked[i,])
  }
  else {
    glimpse(health_facilities_unchecked[i,])
  }
}

fwrite(health_facilities, file = here(path('data-raw'), 'health_facilities.csv'))


usethis::use_data(health_facilities, overwrite = TRUE)
