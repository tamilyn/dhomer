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
#' @format A data frame with 449 rows and 22 columns
#' \describe{
#'   \item{property_name}{The Name of the Property}
#'   \item{latitude}{Property Latitude}
#'   \item{longitude}{Property Longitude}
#'   \item{address}{Property Street Address}
#'   \item{city}{Property City}
#'   \item{state}{Property State}
#'   \item{zip}{Property ZIP Code}
#'   \item{county}{Property County}
#'   \item{country}{Property Country}
#'   \item{lat}{Latitude Match}
#'   \item{long}{Longitude Match}
#'   \item{id}{Dataset ID Number}
#'   \item{input_address}{Geocode Input}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{matched_address}{Geocode Address Match}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{ttps://sc-policymap-com.pallas2.tcl.sc.edu/maps}
"brownfields"

#' Superfund Sites
#'
#' A dataset containing an index of US EPA Superfund sites in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 38 rows and 22 columns
#' \describe{
#'   \item{site_name}{The Name of the Site}
#'   \item{latitude}{Site Latitude}
#'   \item{longitude}{Site Longitude}
#'   \item{address}{Site Street Address}
#'   \item{city}{Site City}
#'   \item{state}{Site State}
#'   \item{zip}{Site ZIP Code}
#'   \item{county}{Site County}
#'   \item{country}{Site Country}
#'   \item{lat}{Latitude Match}
#'   \item{long}{Longitude Match}
#'   \item{id}{Dataset ID Number}
#'   \item{input_address}{Geocode Input}
#'   \item{match_indicator}{Geocode Match Status}
#'   \item{match_type}{Geocode Match Type}
#'   \item{matched_address}{Geocode Address Match}
#'   \item{tiger_line_id}{TIGER Line Identification Number}
#'   \item{tiger_side}{Side of the Address Range}
#'   \item{state_fips}{State FIPS Code}
#'   \item{county_fips}{County FIPS Code}
#'   \item{census_tract}{Census Tract}
#'   \item{census_block}{Census Block}
#' }
#' @source \url{ttps://sc-policymap-com.pallas2.tcl.sc.edu/maps}
"superfund"
