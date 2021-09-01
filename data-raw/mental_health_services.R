## code to prepare `mental_health_services` dataset goes here

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
# South Carolina Mental Health Services
# Downloaded 2021-08-18

explorer_fname <- here(path('data-raw'), "raw_mental_health.csv")
psych <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

psych2 <- psych %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

mental_health_unchecked <- st_join(psych2, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('name','phone','GEOID','INTPTLAT','INTPTLON','lat','lon')) %>%
  distinct(name, .keep_all = TRUE) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

mental_health_services = data.frame()

for (i in 1:nrow(mental_health_unchecked) ) {
  if(32.0346 <= mental_health_unchecked$lat[i] && mental_health_unchecked$lat[i] <= 35.215402 && -83.35391 <= mental_health_unchecked$lon[i] && mental_health_unchecked$lon[i] <= -78.54203) {
    mental_health_services <- rbind(mental_health_services, mental_health_unchecked[i,])
  }
  else {
    glimpse(mental_health_unchecked[i,])
  }
}

fwrite(mental_health_services, file = here(path('data-raw'), 'sc_mental_health_services.csv'))


usethis::use_data(mental_health_services, overwrite = TRUE)
