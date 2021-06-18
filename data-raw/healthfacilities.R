## code to prepare `healthfacilities` dataset goes here

pacman::p_load(readr, tidygeocoder, dplyr, data.table, stringr, janitor, fs, here)

# https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore
# South Carolina Health Facilities
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_all_health_facilities.csv")
facilities <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- facilities %>% geocode(
  street = 'location_street', city = 'location_city', state = 'location_state', postalcode = 'zip_code', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/all_health_facilities_geocoded.csv")

explorer_fname <- here(path('data-raw'), "all_health_facilities_geocodio.csv")
facilities2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

head(facilities2)

facilities2$address <- paste(facilities2$number, facilities2$street)

geographies <- select(facilities2, c('name_of_facility', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country'))

geographies_processed <-distinct(geographies, name_of_facility, .keep_all = TRUE)

final <- geographies_processed %>%
  geocode(street = 'address', city = 'city', state = 'state', postalcode = 'zip',
          method = 'census', return_type = 'geographies', full_results = TRUE)

healthfacilities <- select(final, c('name_of_facility', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country',
                          'match_indicator', 'match_type', 'tiger_line_id', 'tiger_side', 'state_fips', 'county_fips',
                          'census_tract', 'census_block'))

fwrite(healthfacilities, file ="~/Desktop/all_health_facilities_geographies.csv")

usethis::use_data(healthfacilities, overwrite = TRUE)

# At line 17, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as all_health_facilities_geocodio.csv

