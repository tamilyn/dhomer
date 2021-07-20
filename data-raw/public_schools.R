## code to prepare `public_schools` dataset goes here

library(sf)
library(tigris)
library(here)
library(readr)
library(janitor)
library(data.table)

# https://nces.ed.gov/ccd/CCDLocaleCode.asp
# South Carolina Public Schools
# Downloaded 2021-07-13

explorer_fname <- here(path('data-raw'), "raw_sc_public_schools.csv")
raw_schools <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- raw_schools %>%
  filter(is.na(loncod) == F & is.na(latcod) == F) %>%
  st_as_sf(coords = c('loncod', 'latcod'), crs = st_crs(sc_tracts))

system.time({
  intersected <- st_within(coords, sc_tracts)
})

schools <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

public_schools <- st_join(schools, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(-c('intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER','lcity05','lstate05','mlocale','ulocale','status05')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

fwrite(public_schools, file = here(path('data-raw'), 'sc_public_schools.csv'))

usethis::use_data(public_schools, overwrite = TRUE)
