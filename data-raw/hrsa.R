# code to prepare `hrsa` dataset goes here
library(readr)
library(readxl)
library(fs)
library(here)
library(janitor)


# https://data.hrsa.gov/data/download
# 1 Health Center Program Sites - All Health Center Sites
# Downloaded 2021-05-06 (approx)

explorer_fname <- here(path('data-raw'), "hrsa.xlsx")
hrsa <- readxl::read_excel(explorer_fname) %>%
  clean_names()
usethis::use_data(hrsa, overwrite = TRUE)
