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
#' @format A data frame with 456 rows and 21 columns
#' \describe{
#'   \item{cleanup_name}{The Name of the Property}
#'   \item{location_address}{Street Address}
#'   \item{city_name}{City}
#'   \item{state_code}{State}
#'   \item{postal_code}{ZIP Code}
#'   \item{county_name}{County}
#'   \item{epa_id}{EPA Identification Number}
#'   \item{brownfields_link_csv}{Link to Brownfields Profile Page (if applicable)}
#'   \item{rcra_csv}{Link to RCRA Profile Page (if applicable)}
#'   \item{superfund_link_csv}{Link to Superfund Profile Page (if applicable)}
#'   \item{echo_link_csv}{Link to ECHO Report Page (if applicable)}
#'   \item{responselink_csv}{Link to Site Response Page (if applicable)}
#'   \item{re_powering_csv}{Link to Re-Powering Site Profile Page (if applicable)}
#'   \item{frs_link_csv}{Link to Facility Detail Report (if applicable)}
#'   \item{map_site_csv}{Link to EPA Interactive Map (if applicable)}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Site Latitude}
#'   \item{lon}{Site Longitude}
#'   \item{frs}{Facility Registery Service Identification Number}
#' }
#' @source \url{https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::}
"brownfields_processed"

#' Superfund Sites
#'
#' A dataset containing an index of US EPA Superfund sites in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 33 rows and 21 columns
#' \describe{
#'   \item{cleanup_name}{The Name of the Property}
#'   \item{location_address}{Street Address}
#'   \item{city_name}{City}
#'   \item{state_code}{State}
#'   \item{postal_code}{ZIP Code}
#'   \item{county_name}{County}
#'   \item{epa_id}{EPA Identification Number}
#'   \item{brownfields_link_csv}{Link to Brownfields Profile Page (if applicable)}
#'   \item{rcra_csv}{Link to RCRA Profile Page (if applicable)}
#'   \item{superfund_link_csv}{Link to Superfund Profile Page (if applicable)}
#'   \item{echo_link_csv}{Link to ECHO Report Page (if applicable)}
#'   \item{responselink_csv}{Link to Site Response Page (if applicable)}
#'   \item{re_powering_csv}{Link to Re-Powering Site Profile Page (if applicable)}
#'   \item{frs_link_csv}{Link to Facility Detail Report (if applicable)}
#'   \item{map_site_csv}{Link to EPA Interactive Map (if applicable)}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Site Latitude}
#'   \item{lon}{Site Longitude}
#'   \item{frs}{Facility Registery Service Identification Number}
#' }
#' @source \url{https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::}
"superfund_processed"

#' Contaminants of Concern
#'
#' The US EPA's records of contaminated sites and the contaminating substance
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 1784 rows and 25 columns
#' \describe{
#'   \item{contaminant_name}{Identified Contaminant}
#'   \item{media}{Media Where Contaminant is Found}
#'   \item{site_name}{The Name of the Site}
#'   \item{epa_id}{EPA Identification Number}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{county}{County}
#'   \item{zip_code}{ZIP Code}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{region}{EPA Region}
#'   \item{npl_status}{National Priority List Status}
#'   \item{superfund_alternative_agreement}{Superfund Alternative Agreement Indicator}
#'   \item{federal_facility}{Federal Facility Indicator}
#'   \item{operable_unit_number}{Portion of the NPL for Tracking and Planning}
#'   \item{sequence_id}{Sequence Identifier}
#'   \item{decision_document_type}{Record of Decision}
#'   \item{actual_completion_date}{Completion Date of Sequence or Milestone}
#'   \item{fiscal_year}{Fiscal Year}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.epa.gov/superfund/superfund-data-and-reports}
"contaminants_processed"

#' South Carolina Free Clinics
#'
#' The dataset of the free medical clinics in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 70 rows and 9 columns
#' \describe{
#'   \item{clinic_name}{The Name of the Clinic}
#'   \item{address}{Street Address}
#'   \item{specialty}{Clinic Specialty}
#'   \item{hours_of_operation}{Hours of Operation}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract CentroidLongitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.scfreeclinics.org/clinics/}
"freeclinics_processed"

#' South Carolina Farmers and Roadside Markets
#'
#' The dataset of the farmers and roadside markets in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 337 rows and 38 columns
#' \describe{
#'   \item{x}{X Coordinate}
#'   \item{y}{Y Coordinate}
#'   \item{objectid}{Object ID}
#'   \item{name}{The Name of the Market}
#'   \item{street}{Street Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{county}{County}
#'   \item{mail_phone}{Phone Number}
#'   \item{website}{Website}
#'   \item{open_jan}{Open in January}
#'   \item{open_feb}{Open in February}
#'   \item{open_mar}{Open in March}
#'   \item{open_apr}{Open in April}
#'   \item{open_may}{Open in May}
#'   \item{open_jun}{Open in June}
#'   \item{open_jul}{Open in July}
#'   \item{open_aug}{Open in August}
#'   \item{open_sep}{Open in September}
#'   \item{open_oct}{Open in October}
#'   \item{open_nov}{Open in November}
#'   \item{open_dec}{Open in December}
#'   \item{cash}{Accepts Cash Payment}
#'   \item{check}{Accepts Check Payment}
#'   \item{credit}{Accepts Credit Payment}
#'   \item{debit}{Accepts Debit Payment}
#'   \item{other_pay}{Accepts Other Forms of Payment}
#'   \item{wic}{Accepts WIC Payments}
#'   \item{senior}{Accepts Senior Vouchers}
#'   \item{snap_ebt}{Accepts SNAP/EBT Payment}
#'   \item{snap_trans}{SNAP Transaction Type}
#'   \item{h_bucks}{Accepts Healthy Bucks Payment}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/cdb563626aaf4477b7ea591fec10a3e2_0/explore}
"markets_processed"

#' South Carolina Pharmacy Network
#'
#' The dataset of the pharmacies in South Carolina
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 954 rows and 54 columns
#' \describe{
#'   \item{npi}{National Provider Identifier Number}
#'   \item{basic_organization_name}{The Name of the Pharmacy Organization}
#'   \item{npi_2}{National Provider Identifier Number}
#'   \item{hours_of_operation}{Hours of Operation}
#'   \item{medicaid_id}{Medicaid Identifier}
#'   \item{spoken_languages}{Spoken Languages}
#'   \item{e_rx}{Offers e-Rx}
#'   \item{delivery}{Offers Delivery}
#'   \item{compound}{Offers Compounds}
#'   \item{drive_thru}{Offers Drive-Thru}
#'   \item{vaccines}{Offers Vaccines}
#'   \item{handicap_access}{Offers Handicap Access}
#'   \item{cultural_comp_training}{Provides Cultural Competence Training}
#'   \item{accepting_new_customers}{Accepting New Customers}
#'   \item{website}{Website}
#'   \item{basic_organizational_subpart}{Organizational Subpart?}
#'   \item{basic_enumeration_date}{Enumeration Date}
#'   \item{basic_last_updated}{Date Last Updated}
#'   \item{basic_status}{Status (Active)}
#'   \item{basic_authorized_official_credential}{Authorized Official Credential}
#'   \item{basic_authorized_official_first_name}{Authorized Official First Name}
#'   \item{basic_authorized_official_last_name}{Authorized Official Last Name}
#'   \item{basic_authorized_official_telephone_number}{Authorized OFficial Telephone Number}
#'   \item{basic_authorized_official_title_or_position}{Authorized OFficial Title/Position}
#'   \item{basic_name}{Pharmacy Name}
#'   \item{basic_parent_organization_ein}{Parent Organization EIN}
#'   \item{basic_parent_organization_legal_business_name}{Parent Organization}
#'   \item{basic_authorized_official_middle_name}{Authorized Official Middle Name}
#'   \item{basic_authorized_official_name_prefix}{Authorized Official Name Prefix}
#'   \item{basic_authorized_official_name_suffix}{Authorized Official Name Suffix}
#'   \item{basic_certification_date}{Certification Date}
#'   \item{basic_name_prefix}{Other Official Name Prefix}
#'   \item{basic_first_name}{Other Official First Name}
#'   \item{basic_last_name}{Other Official Last Name}
#'   \item{basic_middle_name}{Other Official Middle Name}
#'   \item{basic_credential}{Other Official redentials}
#'   \item{basic_sole_proprieter}{Sole Proprietor}
#'   \item{basic_gender}{Other Official Gender}
#'   \item{addresses_country_code}{Country Code}
#'   \item{addresses_country_name}{Country}
#'   \item{addresses_address_purpose}{Address Purpose}
#'   \item{addresses_address_type}{Address Type}
#'   \item{addresses_address_1}{Street Address}
#'   \item{addresses_address_2}{Street Address 2}
#'   \item{addresses_city}{City}
#'   \item{addresses_state}{State}
#'   \item{addresses_postal_code}{ZIP Code}
#'   \item{addresses_telephone_number}{Telephone Number}
#'   \item{addresses_fax_number}{Fax Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.selecthealthofsc.com/pdf/provider/pharmacy/pharmacy-network.pdf}
"pharmacies_processed"

#' South Carolina Health Facilities
#'
#' The dataset of all licensed health facilities according to SCDHEC
#' #' NEED TO CHECK for any requirements in redistributing data such as a notice
#' copyright, etc
#'
#' @format A data frame with 2781 rows and 30 columns
#' \describe{
#'   \item{objectid}{Object ID}
#'   \item{permit_type}{Facility Permit Type}
#'   \item{name_of_facility}{The Name of the Health Facility}
#'   \item{location_address}{Street Address}
#'   \item{location_city}{City}
#'   \item{location_state}{State}
#'   \item{zip_code}{ZIP Code}
#'   \item{facility_number}{Phone Number}
#'   \item{facility_email}{Email}
#'   \item{admin_name_phone}{Administrator Name and Phone Number}
#'   \item{facility_cont_email}{Secondary Email}
#'   \item{license_expires}{License Expiration Date}
#'   \item{county_ownership_type}{County and Ownership Type}
#'   \item{mailing_address}{Mailing Address}
#'   \item{mailing_city}{Mailing City}
#'   \item{mailing_state}{Mailing State}
#'   \item{mailing_zip}{Mailing ZIP Code}
#'   \item{licensee}{Liensee}
#'   \item{licensee_business_phone}{Licensee Business Phone Number}
#'   \item{cms_certification}{CMS Certification}
#'   \item{county}{County}
#'   \item{evacuation_zone}{Evacuation Zone}
#'   \item{licensee_county}{Licensee County}
#'   \item{x_2}{X Coordinate}
#'   \item(y_2){Y Coordinate}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore}
"healthfacilities_processed"

#' South Carolina Food Deserts
#'
#' The dataset of census tracts deemed to be food deserts by the USDA
#'
#' @format A data frame with 1091 rows and 149 columns
#' \describe{
#'   \item{}
#' }
#' @source \url{https://www.ers.usda.gov/data-products/food-access-research-atlas/download-the-data/}
"fooddeserts_processed"

#' South Carolina Recreation Areas
#'
#' The dataset of recreational areas in South Carolina
#'
#' @format A data frame with 1687 rows and 11 columns
#' \describe{
#'   \item{objectid}{Object ID}
#'   \item{stctyfips}{FIPS Code}
#'   \item{name}{Name}
#'   \item{feattype}{Feature Type}
#'   \item{mnfc}{MultiNet Feature Code}
#'   \item{textlength}{Text Length}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://www.arcgis.com/home/item.html?id=4f14ea9215d1498eb022317458437d19}
"recreation_processed"

#' South Carolina Walkability Index
#'
#' The dataset of measures from the US EPA's National Walkability Index for SC block groups
#'
#' @format A data frame with 3059 rows and 30 columns
#' \describe{
#'   \item{}
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

#' Percent of South Carolina Householders Living Alone
#'
#' The dataset of percent of SC householders living alone according to block group based on the 2015-2019 American Community Survey
#'
#' @format A data frame with 3059 rows and 4 columns
#' \describe{
#'   \item{GEOID}{GEOID}
#'   \item{NAME}{Block Group}
#'   \item{variable}{Variable Code}
#'   \item{percent}{Percent}
#' }
#' @source \{tidycensus...need to format}
"percent_living_alone"

#' Percent of South Carolina Population Over 25 with Less than High School Graduation
#'
#' The dataset of percent of SC population over 25 with less than a completed high school education according to census tract based on the 2015-2019 American Community Survey
#'
#' @format A data frame with 1103 rows and 4 columns
#' \describe{
#'   \item{GEOID}{GEOID}
#'   \item{NAME}{Census Tract}
#'   \item{variable}{Variable Code}
#'   \item{percent}{Percent}
#' }
#' @source \{tidycensus...need to format}
"percent_less_than_high_school_attainment"

#' Percent of South Carolina Households with Income Below Poverty Level in the Past 12 Months
#'
#' The dataset of percent of SC households with an income below the poverty level over the past 12 months according to block group based on the 2015-2019 American Community Survey
#'
#' @format A data frame with 3059 rows and 4 columns
#' \describe{
#'   \item{GEOID}{GEOID}
#'   \item{NAME}{Block Group}
#'   \item{variable}{Variable Code}
#'   \item{percent}{Percent}
#' }
#' @source \{tidycensus...need to format}
"percent_below_poverty_level"
