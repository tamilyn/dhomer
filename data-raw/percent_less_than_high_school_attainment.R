## code to prepare `percent_less_than_high_school_attainment` dataset goes here

library(tidycensus)
census_api_key(Sys.getenv("CENSUS_API_KEY"), install=TRUE)

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


usethis::use_data(percent_less_than_high_school_attainment, overwrite = TRUE)
