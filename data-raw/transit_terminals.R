## code to prepare `transit_terminals` dataset goes here

library(sf)
library(tigris)
library(here)
library(janitor)
library(dplyr)
library(data.table)

# https://hifld-geoplatform.opendata.arcgis.com/datasets/intermodal-passenger-connectivity-database-ipcd/explore?location=45.502900%2C58.184500%2C3.70
# South Carolina Intermodal Passenger Transportation Terminals
# Downloaded 2021-07-13

explorer_fname <- here(path('data-raw/raw_sc_intermodal_passenger_connectivity'), 'raw_sc_intermodal_passenger_connectivity.shp')
raw_transit <- st_read(explorer_fname) %>%
  clean_names() %>%
  st_drop_geometry()

# Correcting reversed latitude/longitude revealed during check
raw_transit$latitude[101] = (raw_transit$longitude[101] - raw_transit$latitude[101]) + (raw_transit$longitude[101] = raw_transit$latitude[101])

sc_tracts <- tracts(state = 45)

coords <- raw_transit %>%
  filter(is.na(longitude) == F & is.na(latitude) == F) %>%
  st_as_sf(coords = c('longitude', 'latitude'), crs = st_crs(sc_tracts))

# coords <- raw_transit %>%
#   filter(is.na(geometry) == F) %>%
#   st_as_sf(wkt = 'geometry') %>%
#   st_transform(crs = 4269)

system.time({
  intersected <- st_within(coords, sc_tracts)
})

transit <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

transit_terminals_unchecked <- st_join(transit, sc_tracts) %>%
  dplyr::mutate(lat = sf::st_coordinates(.)[,2],
                lon = sf::st_coordinates(.)[,1]) %>%
  select(c('fac_id','fac_name','notes','mode_bus','mode_air','mode_rail','mode_ferry','mode_bike','geoid','INTPTLAT','INTPTLON','lat','lon')) %>%
  rename(tract_latitude = INTPTLAT, tract_longitude = INTPTLON) %>%
  st_drop_geometry()

transit_terminals = data.frame()

for (i in 1:nrow(transit_terminals_unchecked) ) {
  if(32.0346 <= transit_terminals_unchecked$lat[i] && transit_terminals_unchecked$lat[i] <= 35.215402 && -83.35391 <= transit_terminals_unchecked$lon[i] && transit_terminals_unchecked$lon[i] <= -78.54203) {
    transit_terminals <- rbind(transit_terminals, transit_terminals_unchecked[i,])
  }
  else {
    glimpse(transit_terminals_unchecked[i,])
  }
}

fwrite(transit_terminals, file = here(path('data-raw'), 'sc_intermodal_passenger_terminals.csv'))

usethis::use_data(transit_terminals, overwrite = TRUE)
