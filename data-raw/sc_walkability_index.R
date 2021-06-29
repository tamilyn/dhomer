## code to prepare `sc_walkability_index` dataset goes here

library(janitor)
library(fs)
library(here)
library(sf)

# https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7B251AFDD9-23A7-4068-9B27-A3048A7E6012%7D
# US EPA National Walkability Index for SC Block Groups
# Downloaded 2021-06-28

explorer_fname <- here(path('data-raw'), "raw_natl_wi")
sc_walkability_index <- st_read(explorer_fname) %>%
  clean_names()

usethis::use_data(sc_walkability_index, overwrite = TRUE)
