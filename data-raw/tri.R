## code to prepare `tri` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://enviro.epa.gov/facts/tri/form_ra_download.html
# Toxic Release Inventory Form R and A Submissions
# 07-07-2021

explorer_fname <- here(path('data-raw'), "raw_tri.csv")
tri <- readr::read_csv(explorer_fname) %>%
  clean_names()

colnames(tri)<- gsub("v_tri_form_r_ez.","",colnames(tri))

sc_tracts <- tracts(state = 45)

tri2 <- tri %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

tri_unchecked <- st_join(tri2, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('chem_name','facility_name','tri_chem_id','tri_facility_id','naics_codes',
           'total_off_site_release','total_on_off_site_release','total_on_site_release',
           'total_production_related_waste','land_total_release','air_total_release',
           'water_total_release','GEOID','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

tri = data.frame()

for (i in 1:nrow(tri_unchecked) ) {
  if(32.0346 <= tri_unchecked$lat[i] && tri_unchecked$lat[i] <= 35.215402 && -83.35391 <= tri_unchecked$lon[i] && tri_unchecked$lon[i] <= -78.54203) {
    tri <- rbind(tri, tri_unchecked[i,])
  }
  else {
    glimpse(tri_unchecked[i,])
  }
}

fwrite(tri, file = here(path('data-raw'), 'sc_tri_sites.csv'))


usethis::use_data(tri, overwrite = TRUE)
