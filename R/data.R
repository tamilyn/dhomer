#' Selected South Carolina Data
#'
#' This package contains data formatted for spatial analysis.
#' Every dataset include lat/lon coordinates.
#'
#' @docType package
#' @name dhomer
NULL

#' All HRSA Sites
#'
#' A dataset containing HRSA sites
#' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 252 rows and 9 variables:
#' \describe{
#'   \item{site_name}{The site name}
#'   \item{bhcmis_org_id}{BHCMIS Organization ID}
#'   \item{bphc_assigned_number}{BPHC Assigned Number}
#'   \item{site_telephone_number}{Site Telephone Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Latitude}
#'   \item{tract_longitude}{Tract Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://data.hrsa.gov/data/download/}
"hrsa"

#' Brownfield Sites
#'
#' A dataset containing an index of brownfield sites in South Carolina
#' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 456 rows and 8 columns
#' \describe{
#'   \item{cleanup_name}{The Name of the Property}
#'   \item{brownfields_id}{Brownfields ID}
#'   \item{frs_id}{Facility Registry ID}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Site Latitude}
#'   \item{lon}{Site Longitude}
#' }
#' @source \url{https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::}
"brownfields"

#' Superfund Sites
#'
#' A dataset containing an index of US EPA Superfund sites in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 33 rows and 9 columns
#' \describe{
#'   \item{cleanup_name}{The Name of the Property}
#'   \item{epa_id}{EPA Identification Number}
#'   \item{superfund_id}{Superfund ID Number}
#'   \item{frs}{Facility Registery Service Identification Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Site Latitude}
#'   \item{lon}{Site Longitude}
#'   \item{frs}{Facility Registery Service Identification Number}
#' }
#' @source \url{https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::}
"superfund"

#' Contaminants of Concern
#'
#' The US EPA's records of contaminated sites and the contaminating substance
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 1784 rows and 9 columns
#' \describe{
#'   \item{contaminant_name}{Identified Contaminant}
#'   \item{media}{Media Where Contaminant is Found}
#'   \item{site_name}{The Name of the Site}
#'   \item{epa_id}{EPA Identification Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.epa.gov/superfund/superfund-data-and-reports}
"contaminants"

#' South Carolina Free Clinics
#'
#' The dataset of the free medical clinics in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 70 rows and 8 columns
#' \describe{
#'   \item{clinic_name}{The Name of the Clinic}
#'   \item{specialty}{Clinic Specialty}
#'   \item{hours_of_operation}{Hours of Operation}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract CentroidLongitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.scfreeclinics.org/clinics/}
"free_clinics"

#' South Carolina Farmers and Roadside Markets
#'
#' The dataset of the farmers and roadside markets in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 337 rows and 8 columns
#' \describe{
#'   \item{objectid}{Object ID}
#'   \item{name}{The Name of the Market}
#'   \item{mail_phone}{Phone Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/cdb563626aaf4477b7ea591fec10a3e2_0/explore}
"markets"

#' South Carolina Pharmacy Network
#'
#' The dataset of the pharmacies in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 954 rows and 10 columns
#' \describe{
#'   \item{npi}{National Provider Identifier Number}
#'   \item{basic_organization_name}{The Name of the Pharmacy Organization}
#'   \item{hours_of_operation}{Hours of Operation}
#'   \item{medicaid_id}{Medicaid Identifier}
#'   \item{addresses_telephone_number}{Telephone Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.selecthealthofsc.com/pdf/provider/pharmacy/pharmacy-network.pdf}
"pharmacies"

#' South Carolina Food Deserts
#'
#' The dataset of census tracts deemed to be food deserts by the USDA
#'
#' @format A data frame with 1091 rows and 10 columns
#' \describe{
#'   \item{census_tract}{Census tract}
#'   \item{lila_tracts_1and10}{Low income and low access tract measured at 1 mile for urban areas and 10 miles for rural areas}
#'   \item{lila_tracts_halfand10}{Low income and low access tract measured at 1/2 mile for urban areas and 10 miles for rural areas}
#'   \item{lila_tracts_1and20}{Low income and low access tract measured at 1 mile for urban areas and 20 miles for rural areas}
#'   \item{low_income_tracts}{Low income tract}
#'   \item{poverty_rate}{Tract poverty rate}
#'   \item{median_family_income}{Tract median family income}
#'   \item{GEOID}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'
#' }
#' @source \url{https://www.ers.usda.gov/data-products/food-access-research-atlas/download-the-data/}
"food_deserts"

#' South Carolina Recreation Areas
#'
#' The dataset of recreational areas in South Carolina
#'
#' @format A data frame with 1687 rows and 8 columns
#' \describe{
#'   \item{objectid}{Object ID}
#'   \item{name}{Name}
#'   \item{feattype}{Feature Type}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.arcgis.com/home/item.html?id=4f14ea9215d1498eb022317458437d19}
"recreation"

#' South Carolina Walkability Index
#'
#' The dataset of measures from the US EPA's National Walkability Index for SC block groups
#'
#' @format A data frame with 3059 rows and 3 columns
#' \describe{
#'   \item{geoid20}{Census Block Group 12-digit FIPS Code (2018)}
#'   \item{nt_wlk_in}{National Walkability Index Score}
#'   \item{geometry}{Geometry}
#' }
#' @source \url{https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7B251AFDD9-23A7-4068-9B27-A3048A7E6012%7D}
"sc_walkability_index"

#' South Carolina Violent Crime Statistics
#'
#' The dataset of violent crime statistics in South Carolina in 2019 according to the South Carolina Law Enforcement Division
#'
#' @format A data frame with 46 rows and 7 columns
#' \describe{
#'   \item{county}{County}
#'   \item{number}{Number of Crimes}
#'   \item{rate}{Crime Rate}
#'   \item{clearance}{Clearance Rate}
#'   \item{geoid}{GEOID}
#'   \item{county_latitude}{County Latitude}
#'   \item{county_longitude}{County Longitude}
#' }
#' @source \url{https://www.sled.sc.gov/forms/statistics/2019%20Crime%20in%20South%20Carolina.pdf}
"violent_crime"

#' South Carolina Property Crime Statistics
#'
#' The dataset of property crime statistics in South Carolina in 2019 according to the South Carolina Law Enforcement Division
#'
#' @format A data frame with 46 rows and 7 columns
#' \describe{
#'   \item{county}{County}
#'   \item{number}{Number of Crimes}
#'   \item{rate}{Crime Rate}
#'   \item{clearance}{Clearance Rate}
#'   \item{geoid}{GEOID}
#'   \item{county_latitude}{County Latitude}
#'   \item{county_longitude}{County Longitude}
#' }
#' @source \url{https://www.sled.sc.gov/forms/statistics/2019%20Crime%20in%20South%20Carolina.pdf}
"property_crime"

#' SC Toxic Release Inventory Form R and A Submissions
#'
#' The dataset of sites in South Carolina that have submitted a Toxic Release Inventory Form R or A
#'
#' @format A data frame with 59834 rows and 17 columns
#' \describe{
#'   \item{chem_name}{Chemical Released}
#'   \item{facility_name}{Facility Name}
#'   \item{tri_chem_id}{TRI Chemical ID}
#'   \item{tri_facility_id}{TRI Facility ID}
#'   \item{naics_codes}{NAICS Code}
#'   \item{total_off_site_release}{Total Pounds of Off-Site Toxic Chemical Release}
#'   \item{total_on_off_site_release}{Total Pounds of On- and Off-Site Toxic Chemical Release}
#'   \item{total_on_site_release}{Total Pounds of On-Site Toxic Chemical Release}
#'   \item{total_production_related_waste}{Total Pounds of Toxic Chemicals Released due to Production}
#'   \item{land_total_release}{Total Pounds of Toxic Chemicals Released to Land}
#'   \item{air_total_release}{Total Pounds of Toxic Chemicals Released to Air}
#'   \item{water_total_release}{Total Pounds of Toxic Chemicals Released to Water}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Trac Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{long}{Longitude}
#' }
#' @source \url{https://enviro.epa.gov/facts/tri/form_ra_download.html}
"tri"

#' CDC/ATSDR Social Vulnerability Index
#'
#' The dataset of
#'
#' @format A data frame with 1103 rows and 4 columns
#' \describe{
#'   \item{geoid}{GEOID}
#'   \item{svi_value}{Social Vulnerability Value}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#' }
#' @source \url{https://www.atsdr.cdc.gov/placeandhealth/svi/data_documentation_download.html}
"social_vulnerability_index"

#' Percent of SC Households without Internet Access
#'
#' The dataset of census tracts in South Carolina with percentage estimates of households without internet access
#'
#' @format A data frame with 1103 rows and 10 columns
#' \describe{
#'   \item{state_fips}{State FIPS Code}
#'   \item{state}{State}
#'   \item{geoid}{GEOID}
#'   \item{census_tract_2}{County and Census Tract}
#'   \item{year}{Data Collection Year}
#'   \item{value}{Percentage Value}
#'   \item{data_comment}{NA}
#'   \item{x8}{NA}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#' }
#' @source \url{https://ephtracking.cdc.gov/DataExplorer/}
"internet_access"

#' SC Protected Areas
#'
#' The dataset of South Carolina's protected lands and waters
#'
#' @format A data frame with 1191565 rows and 7 columns
#' \describe{
#'   \item{category}{Category}
#'   \item{unit_nm}{Unit Name}
#'   \item{GEOID}{GEOID}
#'   \item{tract_latitude}{Tract Latitude}
#'   \item{tract_longitude}{Tract Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.usgs.gov/core-science-systems/science-analytics-and-synthesis/gap/science/pad-us-data-overview?qt-science_center_objects=4#qt-science_center_objects}
"protected_areas"

#' Percent of Impervious Developed Land
#'
#' The dataset of South Carolina census tracts with percentage estimates for the amount impervious land in the tract due to development
#'
#' @format A data frame with 1103 rows and 9 columns
#' \describe{
#'   \item{state_fips}{State FIPS Code}
#'   \item{state}{State}
#'   \item{geoid}{GEOID}
#'   \item{census_tract_2}{County and Census Tract}
#'   \item{year}{Data Collection Year}
#'   \item{value}{Percentage Value}
#'   \item{data_comment}{NA}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#' }
#' @source \url{https://ephtracking.cdc.gov/DataExplorer/}
"developed_land_imperviousness"

#' Percent of Housing Units with No Vehicle Access
#'
#' The dataset of South Carolina census tracts with percentage estimates of housing units with no vehicle access
#'
#' @format A data frame with 1103 rows and 9 columns
#' \describe{
#'   \item{state_fips}{State FIPS Code}
#'   \item{state}{State}
#'   \item{geoid}{GEOID}
#'   \item{census_tract_2}{County and Census Tract}
#'   \item{year}{Data Collection Year}
#'   \item{value}{Percentage Value}
#'   \item{data_comment}{NA}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#' }
#' @source \url{https://ephtracking.cdc.gov/DataExplorer/}
"vehicle_availability"

#' SC County Typology Codes
#'
#' The dataset of county social and economic characteristics, as well as a classification of economic dependence. A value of '1' indicates 'yes'
#'
#' @format A data frame with 46 rows and 21 columns
#' \desribe{
#'   \item{fip_stxt}{5-Digit FIPS Code}
#'   \item{state}{State}
#'   \item{county_name}{County}
#'   \item{metro_nonmetro_status_2013_0_nonmetro_1_metro}{Metro/Nonmetro (1 = Metro)}
#'   \item{economic_types_type_2015_update_non_overlapping}{Number of Non-Overlapping Economic Types}
#'   \item{economic_type_label}{Economic Type Label}
#'   \item{farming_2015_update}{Farm-Dependent}
#'   \item{mining_2015-update}{Mining-Dependent}
#'   \item{manufacturing_2015_update}{Manufacturing-Dependent}
#'   \item{government_2015_update}{Government-Dependent}
#'   \item{recreation_2015_update}{Recreation-Dependent}
#'   \item{nonspecialized_2015_update}{Nonspecialized}
#'   \item{low_education_2015_update}{Low Education County}
#'   \item{low_employment_cnty_2008_2012_25_64}{Low Employment County}
#'   \item{pop_loss_2010}{Experienced Resident Decline}
#'   \item{retirement_dest_2015_update}{Retirement Destination}
#'   \item{persistent_poverty_2013}{Experienced Persistent Poverty}
#'   \item{persistent_related_child_poverty_2013}{Experienced Persistent Related Child Poverty}
#'   \item{geoid}{GEOID}
#'   \item{county_latitude}{County Centroid Latitude}
#'   \item{county_longitude}{County Centroid Longitude}
#' }
#' @source \url{https://www.ers.usda.gov/data-products/county-typology-codes/}
"county_typology_codes"

#' South Carolina Public Schools
#'
#' The dataset of South Carolina public elementary and secondary schools with locale details
#'
#' @format A data frame with 1183 rows and 9 columns
#' \describe{
#'   \item{ncessch}{NCES school ID}
#'   \item{leaid}{Unique Agency Code}
#'   \item{leanm05}{Operating Agency}
#'   \item{schnamM05}{School Name}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://nces.ed.gov/ccd/CCDLocaleCode.asp}
"public_schools"

#' South Carolina Public Libraries
#'
#' The dataset of public libraries and outlets in South Carolina
#'
#' @format A data frame with 232 rows and 9 columns
#' \describe{
#'   \item{libid}{Library ID}
#'   \item{libname}{Name}
#'   \item{phone}{Phone Number}
#'   \item{hours}{Public Service Hours Per Year}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.imls.gov/research-evaluation/data-collection/public-libraries-survey}
"libraries"

#' South Carolina Hospitals
#'
#' The dataset of hospitals in South Carolina
#'
#' @format A data frame with 112 rows and 9 columns
#' \describe{
#'   \item{id}{ID Number}
#'   \item{name}{Hospital Name}
#'   \item{telephone}{Phone Number}
#'   \item{trauma}{Trauma Center Level}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://hifld-geoplatform.opendata.arcgis.com/datasets/hospitals/explore}
"hospitals"

#' South Carolina Intermodal Passenger Transportation Terminals
#'
#' The dataset of South Carolina's passenger transportation terminals that provide various modes of transportation
#'
#' @format A data frame with 104 rows and 13 columns
#' \describe{
#'   \item{fac_id}{Facility ID}
#'   \item{fac_name}{Facility Name}
#'   \item{notes}{Notes}
#'   \item{mode_bus}{Provides Bus Services}
#'   \item{mode_air}{Provides Air Services}
#'   \item{mode_rail}{Provides Rail Services}
#'   \item{mode_ferry}{Provides Ferry Services}
#'   \item{mode_bike}{Provides Bike Services}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://hifld-geoplatform.opendata.arcgis.com/datasets/intermodal-passenger-connectivity-database-ipcd/explore?location=45.502900%2C58.184500%2C3.70}
"transit_terminals"

#' South Carolina Health Facilities
#'
#' A dataset of licensed health facilities as compiled by SC DHEC
#'
#' @format A data frame with 2781 rows and 7 columns
#' \describe{
#'   \item{permit_type}{Type of Permit}
#'   \item{name_of_facility}{Facility Name}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore}
"health_facilities"
