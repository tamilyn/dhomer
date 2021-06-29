## code to prepare `percent_living_alone` dataset goes here

library(tidycensus)
census_api_key(Sys.getenv("CENSUS_API_KEY"), install=TRUE)

single_resident <- get_acs(
  geography = 'block group',
  state = 'SC',
  variables = 'B11001_008',
  year = 2019
)

block_group_population <- get_acs(
  geography = 'block group',
  state = 'SC',
  variables = 'B01003_001',
  year = 2019
)

percent_living_alone <- single_resident %>%
  mutate(percent = 100 * (single_resident$estimate/block_group_population$estimate)) %>%
  select(GEOID, NAME, variable, percent)

usethis::use_data(percent_living_alone, overwrite = TRUE)
