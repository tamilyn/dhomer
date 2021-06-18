#' All HRSA Sites
#'
#' A dataset containing HRSA sites
#' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 252 rows and 31 variables:
#' \describe{
#'   \item{site_name}{The site name}
#'   \item{services_delivered_at_site}{to be filled out soon}
#'   \item{health_center_type}{to be filled out soon}
#'   \item{health_center_location_type}{to be filled out soon}
#'   \item{health_center_location_setting}{to be filled out soon}
#'   \item{county}{to be filled out soon}
#'   \item{state}{to be filled out soon}
#'   \item{grant_number}{to be filled out soon}
#'   \item{bhcmis_org_id}{to be filled out soon}
#'   \item{bphc_assigned_number}{to be filled out soon}
#'   \item{health_center_look_alike_number}{to be filled out soon}
#'   \item{address}{to be filled out soon}
#'   \item{city}{to be filled out soon}
#'   \item{zip}{to be filled out soon}
#'   \item{site_telephone_number}{to be filled out soon}
#'   \item{website}{to be filled out soon}
#'   \item{admin_functions_performed_at_site}{to be filled out soon}
#'   \item{hrsa_grant_programs}{to be filled out soon}
#'   \item{native_hawaiian_health_center_admin_site}{to be filled out soon}
#'   \item{health_center_service_delivery_site_group}{to be filled out soon}
#'   \item{hhs_region}{to be filled out soon}
#'   \item{u_s_senator_name_1}{to be filled out soon}
#'   \item{u_s_senator_name_2}{to be filled out soon}
#'   \item{cong_district}{to be filled out soon}
#'   \item{u_s_congressional_representative_name}{to be filled out soon}
#'   \item{in_u_s_mex_border_100_km_area}{to be filled out soon}
#'   \item{in_u_s_mex_border_county}{to be filled out soon}
#'   \item{rural_status}{to be filled out soon}
#'   \item{longitude}{to be filled out soon}
#'   \item{latitude}{to be filled out soon}
#'   \item{grantee_name}{to be filled out soon}
#' }
#' @source \url{https://data.hrsa.gov/data/download/}
"hrsa"

#' Brownfield Sites
#'
#' A dataset containing an index of brownfield sites in South Carolina
#' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 449 rows and 17 columns
#' \describe{
#'   \item{property_name}{The Name of the Property}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://sc-policymap-com.pallas2.tcl.sc.edu/maps}
"brownfields"

#' Superfund Sites
#'
#' A dataset containing an index of US EPA Superfund sites in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 38 rows and 17 columns
#' \describe{
#'   \item{site_name}{The Name of the Site}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://sc-policymap-com.pallas2.tcl.sc.edu/maps}
"superfund"

#' Contaminants of Concern
#'
#' The US EPA's records of contaminated sites and the contaminating substance
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 31 rows and 17 columns
#' \describe{
#'   \item{site_name}{The Name of the Site}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://www.epa.gov/superfund/superfund-data-and-reports}
"contaminants"

#' South Carolina Free Clinics
#'
#' The dataset of the free medical clinics in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 70 rows and 17 columns
#' \describe{
#'   \item{clinic_name}{The Name of the Clinic}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://www.scfreeclinics.org/clinics/}
"freeclinics"

#' South Carolina Farmers and Roadside Markets
#'
#' The dataset of the farmers and roadside markets in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 337 rows and 17 columns
#' \describe{
#'   \item{name}{The Name of the Market}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/cdb563626aaf4477b7ea591fec10a3e2_0/explore}
"markets"

#' South Carolina Pharmacy Network
#'
#' The dataset of the pharmacies in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 899 rows and 18 columns
#' \describe{
#'   \item{basic_organization_name}{The Name of the Pharmacy}
#'   \item{npi}{National Provider Identifier Number}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://www.selecthealthofsc.com/pdf/provider/pharmacy/pharmacy-network.pdf}
"pharmacies"

#' South Carolina Health Facilities
#'
#' The dataset of all licensed health facilities according to SCDHEC
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 2781 rows and 17 columns
#' \describe{
#'   \item{name_of_facility}{The Name of the Health Facility}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{address}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{country}{Country}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore}
"allhealthfacilities"
