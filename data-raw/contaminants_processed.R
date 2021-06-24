## code to prepare `contaminants_processed` dataset goes here

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

# https://www.epa.gov/superfund/superfund-data-and-reports
# US EPA Contaminants of Concern
# Downloaded 2021-05-25

explorer_fname <- here(path('data-raw'), "raw_contaminants_of_concern.csv")
cofc <- readr::read_csv(explorer_fname) %>%
  clean_names()



geocodes <- cofc %>% geocode(
  street = 'site_location', city = 'city', state = 'state', postalcode = 'zip_code', method = 'cascade'
)

fwrite(geocodes, file = here(path('data-raw'), 'contaminants_primary_processed'))

explorer_fname <- here(path('data-raw'), "contaminants_secondary_processed.csv")
contaminants <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- contaminants %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

contaminants_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

contaminants_processed <- st_join(contaminants_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,1],
                lon = sf::st_coordinates(.)[,2]) %>%
  select(-c('geo_method','intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER',)) %>%
  select(contaminant_name, media, everything()) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()


fwrite(contaminants_processed, file = here(path('data-raw'), 'contaminants_processed.csv'))


usethis::use_data(contaminants_processed, overwrite = TRUE)
