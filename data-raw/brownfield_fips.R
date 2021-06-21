## code to prepare `brownfield_fips` dataset goes here

library(readr)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

explorer_fname <- here(path('data-raw'), "brownfields_geographies.csv")
brownfields <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- brownfields %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

latlong_final <- coords %>%
  mutate(intersection = as.integer(intersected),
         fips = if_else(is.na(intersection), "",
                        sc_tracts$GEOID[intersection]))

joined <- st_join(latlong_final, sc_tracts, by = c('fips','GEOID'))

brownfield_fips <- select(joined, property_name, GEOID, INTPTLAT, INTPTLON)

fwrite(brownfield_fips, '~/Desktop/brownfield_fips.csv')

usethis::use_data(brownfield_fips, overwrite = TRUE)
