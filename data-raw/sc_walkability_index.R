## code to prepare `sc_walkability_index` dataset goes here

library(janitor)
library(fs)
library(here)
library(sf)
library(dplyr)
library(tigris)

# https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7B251AFDD9-23A7-4068-9B27-A3048A7E6012%7D
# US EPA National Walkability Index for SC Block Groups
# Downloaded 2021-06-28

explorer_fname <- here(path('data-raw'), "raw_natl_wi")
sc_walkability_index <- st_read(explorer_fname) %>%
  clean_names() %>%
  select(c('geoid20','nt_wlk_in','geometry'))

sc_blocks <- block_groups(state = 45)

pts <- st_cast(sc_walkability_index, 'POINT')

nwi_unchecked <- st_join(pts, sc_blocks) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('geoid20','nt_wlk_in','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(block_latitude = INTPTLAT, block_longitude = INTPTLON) %>%
  st_drop_geometry()

sc_walkability_index = data.frame()

for (i in 1:nrow(nwi_unchecked) ) {
  if(32.0346 <= nwi_unchecked$lat[i] && nwi_unchecked$lat[i] <= 35.215402 && -83.35391 <= nwi_unchecked$lon[i] && nwi_unchecked$lon[i] <= -78.54203) {
    tri <- rbind(sc_walkability_index, nwi_unchecked[i,])
  }
  else {
    glimpse(nwi_unchecked[i,])
  }
}

usethis::use_data(sc_walkability_index, overwrite = TRUE)
