## code to prepare `contaminants` dataset goes here

pacman::p_load(readr, tidygeocoder, dplyr, data.table, stringr, janitor, fs, here)

# https://www.epa.gov/superfund/superfund-data-and-reports
# US EPA Contaminants of Concern
# Downloaded 2021-05-25

explorer_fname <- here(path('data-raw'), "raw_contaminants_of_concern.csv")
contaminants <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- contaminants %>% geocode(
  street = 'site_location', city = 'city', state = 'state', postalcode = 'zip_code', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/contaminants_of_concern_geocoded.csv")

explorer_fname <- here(path('data-raw'), "contaminants_of_concern_geocodio.csv")
contaminants2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

head(contaminants2)

contaminants2$address <- paste(contaminants2$number, contaminants2$street)

geographies <- select(contaminants2, c('site_name', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country'))

geographies_processed <-distinct(geographies, site_name, .keep_all = TRUE)

final <- geographies_processed %>%
  geocode(street = 'address', city = 'city', state = 'state', postalcode = 'zip',
          method = 'census', return_type = 'geographies', full_results = TRUE)

final2 <- select(final, c('site_name', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country',
                          'match_indicator', 'match_type', 'tiger_line_id', 'tiger_side', 'state_fips', 'county_fips',
                          'census_tract', 'census_block'))

fwrite(final2, file ="~/Desktop/contaminants_of_concern_geographies.csv")

usethis::use_data(contaminants, overwrite = TRUE)

# At line 17, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as contaminants_of_concern_geocodio.csv

