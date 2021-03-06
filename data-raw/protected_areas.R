## code to prepare `protected_areas` dataset goes here

library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

#https://www.usgs.gov/core-science-systems/science-analytics-and-synthesis/gap/science/pad-us-data-overview?qt-science_center_objects=4#qt-science_center_objects
# South Carolina Protected Areas
# Downloaded 2021-07-07

explorer_fname <- here(path('data-raw/raw_sc_protected_area'), "raw_sc_protected_areas.shp")
protected_areas1 <- sf::st_read(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- protected_areas1 %>%
  filter(is.na(geometry) == F) %>%
  st_as_sf(wkt = 'geometry') %>%
  st_transform(crs = 4269)

system.time({
  intersected <- st_within(coords, sc_tracts)
})

protected_areas_processed1 <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection])) %>%
  st_transform(crs = 4269)

pts <- st_cast(protected_areas_processed1, 'POINT')

protected_areas_unchecked <- st_join(pts, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('category','unit_nm','GEOID','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

protected_areas = data.frame()

for (i in 1:nrow(protected_areas_unchecked) ) {
  if(32.0346 <= protected_areas_unchecked$lat[i] && protected_areas_unchecked$lat[i] <= 35.215402 && -83.35391 <= protected_areas_unchecked$lon[i] && protected_areas_unchecked$lon[i] <= -78.54203) {
    tri <- rbind(protected_areas, protected_areas_unchecked[i,])
  }
  else {
    glimpse(protected_areas_unchecked[i,])
  }
}

usethis::use_data(protected_areas, overwrite = TRUE)

# The dataset is too large to save as a .csv file
