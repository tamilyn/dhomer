## code to prepare `percent_less_than_high_school_attainment` dataset goes here

library(tidycensus)
census_api_key(Sys.getenv("CENSUS_API_KEY"), install=TRUE)

# Percent of South Carolina Population Over 25 with Less than High School Graduation
# Extracted 2021-06-29

education <- get_acs(
  geography = 'tract',
  state = 'SC',
  variables = 'B06009_002',
  year = 2019
)

tract_population <- get_acs(
  geography = 'tract',
  state = 'SC',
  variables = 'B01003_001',
  year = 2019
)

percent_less_than_high_school_attainment <- education %>%
  mutate(percent = 100 * (education$estimate/tract_population$estimate)) %>%
  select(GEOID, NAME, variable, percent)

fwrite(percent_less_than_high_school_attainment, file = here(path('data-raw'), 'percent_less_than_high_school_attainment_processed.csv'))

usethis::use_data(percent_less_than_high_school_attainment, overwrite = TRUE)
