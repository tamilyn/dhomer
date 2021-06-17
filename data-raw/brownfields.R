## code to prepare `brownfields` dataset goes here

pacman::p_load(readr, tidygeocoder, dplyr, data.table, stringr, janitor, fs, here)

# https://sc-policymap-com.pallas2.tcl.sc.edu/maps
# US EPA Brownfields, as of 2020
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_brownfields.csv")
brownfields <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- brownfields %>% geocode(
  street = 'property_address', city = 'property_city', state = 'property_state', postalcode = 'property_zip_code', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/brownfields_geocoded.csv")

explorer_fname <- here(path('data-raw'), "brownfields_geocodio.csv")
brownfields2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

head(brownfields2)

brownfields2$address <- paste(brownfields2$number, brownfields2$street)

geographies <- select(brownfields2, c('property_name', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country'))

geographies_processed <-distinct(geographies, property_name, .keep_all = TRUE)

final <- geographies_processed %>%
  geocode(street = 'address', city = 'city', state = 'state', postalcode = 'zip',
          method = 'census', return_type = 'geographies', full_results = TRUE)


fwrite(final, file ="~/Desktop/brownfields_geographies.csv")


usethis::use_data(brownfields, overwrite = TRUE)

# At line 17, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as brownfields_geocodio.csv

