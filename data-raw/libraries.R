## code to prepare `libraries` dataset goes here

library(sf)
library(tigris)
library(here)
library(janitor)
library(readr)
library(data.table)

#
# South Carolina Public Libraries
# Downloaded 2021-07-13

explorer_fname <- here(path('data-raw'), "raw_sc_libraries.csv")
raw_libraries <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- raw_libraries %>%
  filter(is.na(longitud) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitud', 'latitude'), crs = st_crs(sc_tracts))

system.time({
  intersected <- st_within(coords, sc_tracts)
})

libraries <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

libraries_unchecked <- st_join(libraries, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('libid','libname','phone','hours','geoid','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

libraries = data.frame()

for (i in 1:nrow(libraries_unchecked) ) {
  if(32.0346 <= libraries_unchecked$lat[i] && libraries_unchecked$lat[i] <= 35.215402 && -83.35391 <= libraries_unchecked$lon[i] && libraries_unchecked$lon[i] <= -78.54203) {
    libraries <- rbind(libraries, libraries_unchecked[i,])
  }
  else {
    glimpse(libraries_unchecked[i,])
  }
}

fwrite(libraries, file = here(path('data-raw'), 'sc_public_libraries.csv'))

usethis::use_data(libraries, overwrite = TRUE)
