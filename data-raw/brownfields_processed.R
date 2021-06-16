pacman::p_load(rio, tidygeocoder, tidycensus, dplyr, data.table)
pacman::p_load(tidyverse)

rio_csv <- import("~/Desktop/brownfields_geocodio.csv")
head(rio_csv)

rio_csv$address <- paste(rio_csv$Number, rio_csv$Street)

final <- rio_csv %>% 
  geocode(street = 'address', city = 'City', state = 'State', postalcode = 'Zip', 
          method = 'census', return_type = 'geographies', full_results = TRUE)
          
fwrite(final, file ="~/Desktop/brownfields_processed.csv")
