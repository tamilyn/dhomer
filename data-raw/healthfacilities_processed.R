## code to prepare `healthfacilities_processed` dataset goes here

library(tidygeocoder)
library(readr)
library(janitor)
library(fs)
library(here)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)
library(dplyr)
library(data.table)

# https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore
# South Carolina Health Facilities
# Downloaded 2021-05-21

explorer_fname <- here(path('data-raw'), "raw_all_health_facilities.csv")
facilities <- readr::read_csv(explorer_fname) %>%
  clean_names()

sc_tracts <- tracts(state = 45)

coords <- facilities %>%
  filter(is.na(x) == F & is.na(y) == F) %>%
  st_as_sf(coords = c('x', 'y'), crs = st_crs(sc_tracts))

coords

system.time({
  intersected <- st_within(coords, sc_tracts)
})

healthfacilities_processed <- coords %>%
  mutate(intersection = as.integer(intersected),
         geoid = if_else(is.na(intersection), "",
                         sc_tracts$GEOID[intersection]))

healthfacilities_processed <- st_join(healthfacilities_processed, sc_tracts, by = c('geoid','GEOID')) %>%
  select(-c('intersection','STATEFP','COUNTYFP','TRACTCE','GEOID','NAME','NAMELSAD','MTFCC','FUNCSTAT','ALAND','AWATER','admin_name_phone','facility_cont_email',
            'county_ownership_type','mailing_address','mailing_city','mailing_state','mailing_zip','licensee','licensee_business_phone','cms_certification','evacuation_zone',
            'licensee_county','x_2','y_2')) %>%
  distinct(name_of_facility, .keep_all = TRUE)


fwrite(healthfacilities_processed, file = here(path('data-raw'), 'healthfacilities_processed.csv'))


usethis::use_data(healthfacilities_processed, overwrite = TRUE)
