## code to prepare `percent_below_poverty_level` dataset goes here

library(tidycensus)
census_api_key(Sys.getenv("CENSUS_API_KEY"), install=TRUE)
library(data.table)

# Percent of South Carolina Households with Income Below Poverty Level in the Past 12 Months
# Extracted 2021-06-29

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

fwrite(percent_below_poverty_level, file = here(path('data-raw'), 'percent_below_poverty_level_processed.csv'))

usethis::use_data(percent_below_poverty_level, overwrite = TRUE)
