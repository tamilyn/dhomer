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

# https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::
# US EPA Contaminants of Concern
# Downloaded 2021-06-22

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
  select(-c('geo_method','intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER')) %>%
  distinct(site_name, .keep_all = TRUE)


fwrite(contaminants_processed, file = here(path('data-raw'), 'contaminants_processed.csv'))


usethis::use_data(contaminants_processed, overwrite = TRUE)
