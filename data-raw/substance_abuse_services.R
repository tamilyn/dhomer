## code to prepare `substance_abuse_services` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://findtreatment.samhsa.gov/locator
# South Carolina Substance Abuse Services
# Downloaded 2021-08-18

explorer_fname <- here(path('data-raw'), "raw_substance_abuse.csv")
services <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

services2 <- services %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

services_unchecked <- st_join(services2, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('name','phone','sa','dt','hh','GEOID','INTPTLAT','INTPTLON','lat','lon')) %>%
  distinct(name, .keep_all = TRUE) %>%
  rename(treatment_facility = sa, detoxification = dt, transitional_housing = hh, tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

substance_abuse_services = data.frame()

for (i in 1:nrow(services_unchecked) ) {
  if(32.0346 <= services_unchecked$lat[i] && services_unchecked$lat[i] <= 35.215402 && -83.35391 <= services_unchecked$lon[i] && services_unchecked$lon[i] <= -78.54203) {
    substance_abuse_services <- rbind(substance_abuse_services, services_unchecked[i,])
  }
  else {
    glimpse(services_unchecked[i,])
  }
}

fwrite(substance_abuse_services, file = here(path('data-raw'), 'sc_substance_abuse_services.csv'))

usethis::use_data(substance_abuse_services, overwrite = TRUE)
