## code to prepare `freeclinics_processed` dataset goes here

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

#  https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::
# US EPA Brownfields
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

coords <- clinics %>%
  filter(is.na(long) == F & is.na(lat) == F) %>%
  st_as_sf(coords = c('long', 'lat'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

freeclinics_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

freeclinics_procesed <- st_join(freeclinics_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  select(-c('geo_method','intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER'))

fwrite(freeclinics_processed, file = here(path('data-raw'), 'freeclinics_processed.csv'))

usethis::use_data(freeclinics_processed, overwrite = TRUE)

## At line 26, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search ##
