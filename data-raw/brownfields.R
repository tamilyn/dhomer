## code to prepare `brownfields` dataset goes here

pacman::p_load(rio, tidygeocoder, tidycensus, dplyr, data.table, stringr, tidyverse)

# https://sc-policymap-com.pallas2.tcl.sc.edu/maps
# US EPA Brownfields, as of 2020
# Downloaded 2021-05-21

brownfields <- import("~/Desktop/raw_brownfields.csv")
head(brownfields)

geocodes <- brownfields %>% geocode(
  street = 'Property Address', city = 'Property City', state = 'Property State', postalcode = 'Property ZIP Code', method = 'cascade'
)

fwrite(geocodes, file ="~/Desktop/brownfields_geocoded.csv")

brownfields2 <- import("~/Desktop/brownfields_geocodio.csv")

brownfields2$address <- paste(brownfields2$Number, brownfields2$Street)

final <- brownfields2 %>%
  geocode(street = 'address', city = 'City', state = 'State', postalcode = 'Zip',
          method = 'census', return_type = 'geographies', full_results = TRUE)


fwrite(final, file ="~/Desktop/brownfields.csv")


usethis::use_data(brownfields, overwrite = TRUE)

# At line 16, the .csv file was exported for accuracy check of latitudes and longitudes and manual input of missing values via GoogleMaps search
# The file was then ran through a reverse geocode on Geocodio (https://dash.geocod.io/) and saved as brownfields_geocodio.csv

