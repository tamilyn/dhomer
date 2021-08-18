# code to prepare `hrsa` dataset goes here
library(readr)
library(readxl)
library(fs)
library(here)
library(janitor)


# https://data.hrsa.gov/data/download
# 1 Health Center Program Sites - All Health Center Sites
# Downloaded 2021-05-06 (approx)

explorer_fname <- here(path('data-raw'), "hrsa.xlsx")
hrsa1 <- readxl::read_excel(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- hrsa1 %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

hrsa_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

hrsa_unchecked <- st_join(hrsa_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('site_name','bhcmis_org_id','bphc_assigned_number','site_telephone_number','geoid','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

hrsa = data.frame()

for (i in 1:nrow(hrsa_unchecked) ) {
  if(32.0346 <= hrsa_unchecked$lat[i] && hrsa_unchecked$lat[i] <= 35.215402 && -83.35391 <= hrsa_unchecked$lon[i] && hrsa_unchecked$lon[i] <= -78.54203) {
    hrsa <- rbind(hrsa, hrsa_unchecked[i,])
  }
}

fwrite(hrsa, file = here(path('data-raw'), 'hrsa.csv'))


usethis::use_data(hrsa, overwrite = TRUE)
