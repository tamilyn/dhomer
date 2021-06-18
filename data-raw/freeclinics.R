## code to prepare `freeclinics` dataset goes here

pacman::p_load(readr, tidygeocoder, dplyr, data.table, stringr, janitor, fs, here)

# https://www.scfreeclinics.org/clinics/
# South Carolina Free Clinics
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_free_clinics.csv")
clinics <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- clinics %>% geocode(
  street = 'address', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/free_clinics_geocoded.csv")

explorer_fname <- here(path('data-raw'), "free_clinics_geocodio.csv")
freeclinics2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

head(freeclinics2)

freeclinics2$address <- paste(freeclinics2$number, freeclinics2$street)

geographies <- select(freeclinics2, c('clinic_name', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country'))

geographies_processed <-distinct(geographies, clinic_name, .keep_all = TRUE)

final <- geographies_processed %>%
  geocode(street = 'address', city = 'city', state = 'state', postalcode = 'zip',
          method = 'census', return_type = 'geographies', full_results = TRUE)

final <- subset(final, latitude != 0.0000)

freeclinics <- select(final, c('clinic_name', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country',
                          'match_indicator', 'match_type', 'tiger_line_id', 'tiger_side', 'state_fips', 'county_fips',
                          'census_tract', 'census_block'))

fwrite(freeclinics, file ="~/Desktop/free_clinics_geographies.csv")

usethis::use_data(freeclinics, overwrite = TRUE)

# At line 17, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as free_clinics_geocodio.csv


