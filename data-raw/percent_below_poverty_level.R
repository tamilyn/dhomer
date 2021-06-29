## code to prepare `percent_below_poverty_level` dataset goes here

library(tidycensus)
census_api_key(Sys.getenv("CENSUS_API_KEY"), install=TRUE)

poverty <- get_acs(
  geography = 'block group',
  state = 'SC',
  variables = 'B17021_002',
  year = 2019
)

block_group_population <- get_acs(
  geography = 'block group',
  state = 'SC',
  variables = 'B01003_001',
  year = 2019
)

percent_below_poverty_level <- poverty %>%
  mutate(percent = 100 * (poverty$estimate/block_group_population$estimate)) %>%
  select(GEOID, NAME, variable, percent)

usethis::use_data(percent_below_poverty_level, overwrite = TRUE)
