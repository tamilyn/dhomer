## code to prepare `markets` dataset goes here

pacman::p_load(readr, tidygeocoder, dplyr, data.table, stringr, janitor, fs, here)

# https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/cdb563626aaf4477b7ea591fec10a3e2_0/explore
# South Carolina Farmers and Roadside Markets
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_farmers_markets_and_roadside_markets.csv")
markets <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- markets %>% geocode(
  street = 'street', city = 'city', state = 'state', postalcode = 'zip', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/markets_geocoded.csv")

explorer_fname <- here(path('data-raw'), "farmers_and_roadside_geocodio.csv")
markets2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

head(markets2)

markets2$address <- paste(markets2$number, markets2$street_2)

geographies <- select(markets2, c('name', 'lat_34', 'long_35', 'address', 'city_2', 'state_2', 'zip_2', 'county_2', 'country'))

geographies_processed <-distinct(geographies, name, .keep_all = TRUE)

final <- geographies_processed %>%
  geocode(street = 'address', city = 'city_2', state = 'state_2', postalcode = 'zip_2',
          method = 'census', return_type = 'geographies', full_results = TRUE)

final2 <- select(final, c('name', 'lat_34', 'long_35', 'address', 'city_2', 'state_2', 'zip_2', 'county_2', 'country',
                          'match_indicator', 'match_type', 'tiger_line_id', 'tiger_side', 'state_fips', 'county_fips',
                          'census_tract', 'census_block'))

fwrite(final2, file ="~/Desktop/farmers_and_roadside_markets_geographies.csv")

usethis::use_data(markets, overwrite = TRUE)

# At line 17, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as farmers_and_roadside_geocodio.csv

