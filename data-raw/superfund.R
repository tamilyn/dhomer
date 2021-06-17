## code to prepare `superfund` dataset goes here

pacman::p_load(readr, tidygeocoder, dplyr, data.table, stringr, janitor, fs, here)

# https://sc-policymap-com.pallas2.tcl.sc.edu/maps
# US EPA Superfund Sites, as of 2020
# Downloaded 2021-05-25

explorer_fname <- here(path('data-raw'), "raw_superfund.csv")
superfund <- readr::read_csv(explorer_fname) %>%
  clean_names()

geocodes <- superfund %>% geocode(
  street = 'address', city = 'city', state = 'state', postalcode = 'zip_code', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/superfund_geocoded.csv")

explorer_fname <- here(path('data-raw'), "superfund_geocodio.csv")
superfund2 <- readr::read_csv(explorer_fname) %>%
  clean_names()

head(superfund2)

superfund2$address <- paste(superfund2$number, superfund2$street)

geographies <- select(superfund2, c('site_name', 'latitude', 'longitude', 'address', 'city', 'state', 'zip', 'county', 'country'))

geographies_processed <-distinct(geographies, site_name, .keep_all = TRUE)

final <- geographies_processed %>%
  geocode(street = 'address', city = 'city', state = 'state', postalcode = 'zip',
          method = 'census', return_type = 'geographies', full_results = TRUE)

final <- subset(final, latitude != 0.0000)

fwrite(final, file ="~/Desktop/superfund_geographies.csv")

usethis::use_data(superfund, overwrite = TRUE)

# At line 17, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as superfund_geocodio.csv
