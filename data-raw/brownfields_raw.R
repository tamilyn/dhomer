pacman::p_load(rio, tidygeocoder, tidycensus, dplyr, data.table)
pacman::p_load(tidyverse)

rio_csv <- import("~/Desktop/brownfields.csv")
head(rio_csv)

geocodes <- rio_csv %>% geocode(
  street = 'Property Address', city = 'Property City', state = 'Property State', postalcode = 'Property ZIP Code', method = 'cascade'
)

geocodes

fwrite(geocodes, file ="~/Desktop/brownfields_geocoded.csv")

# Exported data was checked for accuracy in lat and long columns and missing values were inputted manually through GoogleMaps search
# Accurate data was imported to Geocodio at https://dash.geocod.io/ for reverse geocoding and then exported as brownfields_geocodio.csv
