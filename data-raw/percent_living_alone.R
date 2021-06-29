## code to prepare `percent_living_alone` dataset goes here

library(tidycensus)
census_api_key(Sys.getenv("CENSUS_API_KEY"), install=TRUE)
library(data.table)

# Percent of South Carolina Householders Living Alone
# Extracted 2021-06-29

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

fwrite(percent_living_alone, file = here(path('data-raw'), 'percent_living_alone_processed.csv'))

usethis::use_data(percent_living_alone, overwrite = TRUE)
