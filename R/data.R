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

#' South Carolina Food Deserts
#'
#' The dataset of census tracts deemed to be food deserts by the USDA
#'
#' @format A data frame with 1091 rows and 149 columns
#' \describe{
#'   \item{census_tract}{Census tract}
#'   \item{state}{State}
#'   \item{county}{County}
#'   \item{urban}{Urban tract}
#'   \item{pop2010}{Population, tract total}
#'   \item{ohu2010}{Housing units, total}
#'   \item{group_quarters_flag}{Group quarters, tract with high share}
#'   \item{numgqtrs}{Group quarters, tract population residing in, number}
#'   \item{pctgqtrs}{Group quarters, tract population residing in, share}
#'   \item{lila_tracts_1and10}{Low income and low access tract measured at 1 mile for urban areas and 10 miles for rural areas}
#'   \item{lila_tracts_halfand10}{Low income and low access tract measured at 1/2 mile for urban areas and 10 miles for rural areas}
#'   \item{lila_tracts_1and20}{Low income and low access tract measured at 1 mile for urban areas and 20 miles for rural areas}
#'   \item{lila_tracts_vehicle}{Low income and low access tract using vehicle access or low income and low access tract measured at 20 miles}
#'   \item{hunv_flag}{Vehicle access, tract with low vehicle access}
#'   \item{low_income_tracts}{Low income tract}
#'   \item{poverty_rate}{Tract poverty rate}
#'   \item{median_family_income}{Tract median family income}
#'   \item{la1and10}{Low access tract at 1 mile for urban areas and 10 miles for rural areas}
#'   \item{l_ahalfand10}{Low access tract at 1/2 mile for urban areas and 10 miles for rural areas}
#'   \item{la1and20}{Low access tract at 1 mile for urban areas and 20 miles for rural areas}
#'   \item{la_tracts_half}{Low access tract at 1/2 mile}
#'   \item{la_tracts1}{Low access tract at 1 mile}
#'   \item{la_tracts10}{Low access tract at 10 miles}
#'   \item{la_tracts20}{Low access tract at 20 miles}
#'   \item{la_tracts_vehicle_20}{Low access tract using vehicle access and at 20 miles  in rural areas}
#'   \item{lapop1_10}{Low access, population at 1 mile for urban areas and 10 miles for rural areas, number}
#'   \item{lapop05_10}{Low access, population at 1/2 mile for urban areas and 10 miles for rural areas, number}
#'   \item{lapop1_20}{Low access, population at 1 mile for urban areas and 20 miles for rural areas, number}
#'   \item{lalowi1_10}{Low access, low-income population at 1 mile for urban areas and 10 miles for rural areas, number}
#'   \item{lalowi05_10}{Low access, low-income population at 1/2 mile for urban areas and 10 miles for rural areas, number}
#'   \item{lalowi1_20}{Low access, low-income population at 1 mile for urban areas and 20 miles for rural areas, number}
#'   \item{lapophalf}{Low access, population at 1/2 mile, number}
#'   \item{lapophalfshare}{Low access, population at 1/2 mile, share}
#'   \item{lalowihalf}{Low access, low-income population at 1/2 mile, number}
#'   \item{lalowihalfshare}{Low access, low-income population at 1/2 mile, share}
#'   \item{lakidshalf}{Low access, children age 0-17 at 1/2 mile, number}
#'   \item{lakidshalfshare}{Low access, children age 0-17 at 1/2 mile, share}
#'   \item{laseniorshalf}{Low access, seniors age 65+ at 1/2 mile, number}
#'   \item{laseniorshalfshare}{Low access, seniors age 65+ at 1/2 mile, share}
#'   \item{lawhitehalf}{Low access, White population at 1/2 mile, number}
#'   \item{lawhitehalfshare}{Low access, White population at 1/2 mile, share}
#'   \item{lablackhalf}{Low access, Black or African American population at 1/2 mile, number}
#'   \item{lablackhalfshare}{Low access, Black or African American population at 1/2 mile, share}
#'   \item{laasianhalf}{Low access, Asian population at 1/2 mile, number}
#'   \item{laasianhalfshare}{Low access, Asian population at 1/2 mile, share}
#'   \item{lanhopihalf}{Low access, Native Hawaiian or Other Pacific Islander population at 1/2 mile, number}
#'   \item{lanhopihalfshare}{Low access, Native Hawaiian or Other Pacific Islander population at 1/2 mile, share}
#'   \item{laaianhalf}{Low access, American Indian or Alaska Native population at 1/2 mile, number}
#'   \item{laaianhalfshare}{Low access, American Indian or Alaska Native population at 1/2 mile, share}
#'   \item{laomultirhalf}{Low access, Other/Multiple race population at 1/2 mile, number}
#'   \item{laomultirhalfshare}{Low access, Other/Multiple race population at 1/2 mile, share}
#'   \item{lahisphalf}{Low access, Hispanic or Latino population at 1/2 mile, number}
#'   \item{lahisphalfshare}{Low access, Hispanic or Latino population at 1/2 mile, share}
#'   \item{lahunvhalf}{Vehicle access, housing units without and low access at 1/2 mile, number}
#'   \item{lahunvhalfshare}{Vehicle access, housing units without and low access at 1/2 mile, share}
#'   \item{lasnaphalf}{Low access, housing units receiving SNAP benefits at 1/2 mile, number}
#'   \item{lasnaphalfshare}{Low access, housing units receiving SNAP benefits at 1/2 mile, share}
#'   \item{lapop1}{Low access, population at 1 mile, number}
#'   \item{lapop1share}{Low access, population at 1 mile, share}
#'   \item{lalowi1}{Low access, low-income population at 1 mile, number}
#'   \item{lalowi1share}{Low access, low-income population at 1 mile, share}
#'   \item{lakids1}{Low access, children age 0-17 at 1 mile, number}
#'   \item{lakids1share}{Low access, children age 0-17 at 1 mile, share}
#'   \item{laseniors1}{Low access, seniors age 65+ at 1 mile, number}
#'   \item{laseniors1share}{Low access, seniors age 65+ at 1 mile, share}
#'   \item{lawhite1}{Low access, White population at 1 mile, number}
#'   \item{lawhite1share}{Low access, White population at 1 mile, share}
#'   \item{lablack1}{Low access, Black or African American population at 1 mile, number}
#'   \item{lablack1share}{Low access, Black or African American population at 1 mile, share}
#'   \item{laasian1}{Low access, Asian population at 1 mile, number}
#'   \item{laasian1share}{Low access, Asian population at 1 mile, share}
#'   \item{lanhopi1}{Low access, Native Hawaiian and Other Pacific Islander population at 1 mile, number}
#'   \item{lanhopi1share}{Low access, Native Hawaiian and Other Pacific Islander population at 1 mile, share}
#'   \item{laaian1}{Low access, American Indian and Alaska Native population at 1 mile, number}
#'   \item{laaian1share}{Low access, American Indian and Alaska Native population at 1 mile, share}
#'   \item{laomultir1}{Low access, Other/Multiple race population at 1 mile, number}
#'   \item{laomultir1share}{Low access, Other/Multiple race population at 1 mile, share}
#'   \item{lahisp1}{Low access, Hispanic or Latino population at 1 mile, number}
#'   \item{lahisp1share}{Low access, Hispanic or Latino population at 1 mile, share}
#'   \item{lahunv1}{Vehicle access, housing units without and low access at 1 mile, number}
#'   \item{lahunv1share}{Vehicle access, housing units without and low access at 1 mile, share}
#'   \item{lasnap1}{Low access, housing units receiving SNAP benefits at 1 mile, number}
#'   \item{lasnap1share}{Low access, housing units receiving SNAP benefits at 1 mile, share}
#'   \item{lapop10}{Low access, population at 10 miles, number}
#'   \item{lapop10share}{Low access, population at 10 miles, share}
#'   \item{lalowi10}{Low access, low-income population at 10 miles, number}
#'   \item{lalowi10share}{Low access, low-income population at 10 miles, share}
#'   \item{lakids10}{Low access, children age 0-17 at 10 miles, number}
#'   \item{lakids10share}{Low access, children age 0-17 at 10 miles, share}
#'   \item{laseniors10}{Low access, seniors age 65+ at 10 miles, number}
#'   \item{laseniors10share}{Low access, seniors age 65+ at 10 miles, share}
#'   \item{lawhite10}{Low access, White population at 10 miles, number}
#'   \item{lawhite10share}{Low access, White population at 10 miles, share}
#'   \item{lablack10}{Low access, Black or African American population at 10 miles, number}
#'   \item{lablack10share}{Low access, Black or African American population at 10 miles, share}
#'   \item{laasian10}{Low access, Asian population at 10 miles, number}
#'   \item{laasian10share}{Low access, Asian population at 10 miles, share}
#'   \item{lanhopi10}{Low access, Native Hawaiian and Other Pacific Islander population at 10 miles, number}
#'   \item{lanhopi10share}{Low access, Native Hawaiian and Other Pacific Islander population at 10 miles, share}
#'   \item{laaian10}{Low access, American Indian and Alaska Native population at 10 miles, number}
#'   \item{laaian10share}{Low access, American Indian and Alaska Native population at 10 miles, share}
#'   \item{laomultir10}{Low access, Other/Multiple race population at 10 miles, number}
#'   \item{laomultir10share}{Low access, Other/Multiple race population at 10 miles, share}
#'   \item{lahisp10}{Low access, Hispanic or Latino population at 10 miles, number}
#'   \item{lahisp10share}{Low access, Hispanic or Latino population at 10 miles, share}
#'   \item{lahunv10}{Vehicle access, housing units without and low access at 10 miles, number}
#'   \item{lahunv10share}{Vehicle access, housing units without and low access at 10 miles, share}
#'   \item{lasnap10}{Low access, housing units receiving SNAP benefits at 10 miles, number}
#'   \item{lasnap10share}{Low access,housing units receiving SNAP benefits at 10 miles, share}
#'   \item{lapop20}{Low access, population at 20 miles, number}
#'   \item{lapop20share}{Low access, population at 20 miles, share}
#'   \item{lalowi20}{Low access, low-income population at 20 miles, number}
#'   \item{lalowi20share}{Low access, low-income population at 20 miles, share}
#'   \item{lakids20}{Low access, children age 0-17 at 20 miles, number}
#'   \item{lakids20share}{Low access, children age 0-17 at 20 miles, share}
#'   \item{laseniors20}{Low access, seniors age 65+ at 20 miles, number}
#'   \item{laseniors20share}{Low access, seniors age 65+ at 20 miles, share}
#'   \item{lawhite20}{Low access, White population at 20 miles, number}
#'   \item{lawhite20share}{Low access, White population at 20 miles, share}
#'   \item{lablack20}{Low access, Black or African American population at 20 miles, number}
#'   \item{lablack20share}{Low access, Black or African American population at 20 miles, share}
#'   \item{laasian20}{Low access, Asian population at 20 miles, number}
#'   \item{laasian20share}{Low access, Asian population at 20 miles, share}
#'   \item{lanhopi20}{Low access, Native Hawaiian and Other Pacific Islander population at 20 miles, number}
#'   \item{lanhopi20share}{Low access, Native Hawaiian and Other Pacific Islander population at 20 miles, share}
#'   \item{laaian20}{Low access, American Indian and Alaska Native population at 20 miles, number}
#'   \item{laaian20share}{Low access, American Indian and Alaska Native population at 20 miles, share}
#'   \item{laomultir20}{Low access, Other/Multiple race population at 20 miles, number}
#'   \item{laomultir20share}{Low access, Other/Multiple race population at 20 miles, share}
#'   \item{lahisp20}{Low access, Hispanic or Latino population at 20 miles, number}
#'   \item{lahisp20share}{Low access, Hispanic or Latino population at 20 miles, share}
#'   \item{lahunv20}{Vehicle access, housing units without and low access at 20 miles, number}
#'   \item{lahunv20share}{Vehicle access, housing units without and low access at 20 miles, share}
#'   \item{lasnap20}{Low access, housing units receiving SNAP benefits at 20 miles, number}
#'   \item{lasnap20share}{Low access, housing units receiving SNAP benefits at 20 miles, share}
#'   \item{tractlowi}{Tract low-income population, number}
#'   \item{tractkids}{Tract children age 0-17, number}
#'   \item{tractseniors}{Tract seniors age 65+, number}
#'   \item{tractwhite}{Tract White population, number}
#'   \item{tractblack}{Tract Black or African American population, number}
#'   \item{tractasian}{Tract Asian population, number}
#'   \item{tractnhopi}{Tract Native Hawaiian and Other Pacific Islander population, number}
#'   \item{tractaian}{Tract American Indian and Alaska Native population, number}
#'   \item{tractomultir}{Tract Other/Multiple race population, number}
#'   \item{tracthispanic}{Tract Hispanic or Latino population, number}
#'   \item{tracthunv}{Tract housing units without a vehicle, number}
#'   \item{tractsnap}{Tract housing units receiving SNAP benefits, number}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Tract Centroid Longitude}
#'
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
#'   \item{geoid10}{Census Block Group 12-digit FIPS Code (2010)}
#'   \item{geoid20}{Census Block Group 12-digit FIPS Code (2018)}
#'   \item{statefp}{State FIPS Code}
#'   \item{countyf}{County FIPS Code}
#'   \item{tractce}{Tract FIPS Code}
#'   \item{blockgrpc}{Block Group FIPS Code}
#'   \item{csa}{Combined Statistical Area Code}
#'   \item{csa_nam}{Combined Statistical Area Name}
#'   \item{cbsa}{Core-Based Statistical Area Code}
#'   \item{cbsa_nm}{Core-Based Statistical Area Name}
#'   \item{ac_totl}{Total Geometric Area of Block Group}
#'   \item{ac_watr}{Total Water Area}
#'   \item{ac_land}{Total Land Area}
#'   \item{ac_unpr}{Total Unprotexted Land Area}
#'   \item{tot_pop}{Total Population}
#'   \item{count_hu}{Housing Units}
#'   \item{hh}{Households}
#'   \item{workers}{Count of Workers}
#'   \item{d2b_e8mixa}{Employment Mix}
#'   \item{d2a_ephhm}{Employment and Household Mix}
#'   \item{d3b}{Intersection Density}
#'   \item{d4a}{Proximity to Transit Stops}
#'   \item{d2b_rnk}{Employment Mix Ranking (1-20)}
#'   \item{d2a_rnk}{Employment and Household Mix Ranking (1-20)}
#'   \item{d3b_rnk}{Intersection Density Ranking (1-20)}
#'   \item{d4a_rnk}{Proximity to Transit Stops Ranking (1-20)}
#'   \item{nt_wlk_in}{National Walkability Index Score}
#'   \item{shp_lng}{Shape Perimeter}
#'   \item{shap_ar}{Shape Area}
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
#' @format A data frame with 59834 rows and 30 columns
#' \describe{
#'   \item{chem_name}{Chemical Released}
#'   \item{facility_name}{Facility Name}
#'   \item{street_address}{Street Address}
#'   \item{city_name}{City}
#'   \item{state_abbr}{State Abbreviation}
#'   \item{state_county_fips_code}{5-digit FIPS Code}
#'   \item{zip_code}{ZIP Code}
#'   \item{county_name}{County}
#'   \item{tri_chem_id}{TRI Chemical ID}
#'   \item{tri_facility_id}{TRI Facility ID}
#'   \item{cas_registry_number}{CAS Registry Number}
#'   \item{epa_registry_id}{EPA Registry ID}
#'   \item{naics_codes}{NAICS Code}
#'   \item{industry_code}{Industry Code}
#'   \item{active_date}{Active Since}
#'   \item{active_status}{Active Status (1 = Active)}
#'   \item{max_amount_of_chem}{Maximum Number of Chemicals Released from the Site}
#'   \item{total_off_site_release}{Total Pounds of Off-Site Toxic Chemical Release}
#'   \item{total_on_off_site_release}{Total Pounds of On- and Off-Site Toxic Chemical Release}
#'   \item{total_on_site_release}{Total Pounds of On-Site Toxic Chemical Release}
#'   \item{total_production_related_waste}{Total Pounds of Toxic Chemicals Released due to Production}
#'   \item{land_total_release}{Total Pounds of Toxic Chemicals Released to Land}
#'   \item{land_trea_tot_rel}{Total Pounds of Toxic Chemicals Disposed of in Land Treatment and Application Farming}
#'   \item{air_total_release}{Total Pounds of Toxic Chemicals Released to Air}
#'   \item{water_total_release}{Total Pounds of Toxic Chemicals Released to Water}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Tract Centroid Latitude}
#'   \item{tract_longitude}{Trac Centroid Longitude}
#'   \item{lat}{Latitude}
#'   \item{long}{Longitude}
#' }
#' @source \url{https://enviro.epa.gov/facts/tri/form_ra_download.html}
"tri_processed"

#' CDC/ATSDR Social Vulnerability Index
#'
#' The dataset of
#'
#' @format A data frame with 1103 rows and 125 columns
#' \describe{
#'   \item{}
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
#' @format A data frame with 1191565 rows and 73 columns
#' \describe{
#'   \item{category}{Category}
#'   \item{d_category}{Category}
#'   \item{own_type}{Owner Type}
#'   \item{d_own_type}{Owner Type}
#'   \item{own_name}{Owner Name}
#'   \item{d_own_name}{Owner Name}
#'   \item{loc_own}{Local Owner}
#'   \item{mang_type}{Manager Type}
#'   \item{d_mang_typ}{Manager Type}
#'   \item{mang_name}{Manager Name}
#'   \item{d_mang_nam}{Manager Name}
#'   \item{loc_mang}{Local Manager}
#'   \item{des_tp}{Designation Type}
#'   \item{d_des_tp}{Designation Type}
#'   \item{loc_ds}{Local Designation}
#'   \item{unit_nm}{Unit Name}
#'   \item{loc_nm}{Local Name}
#'   \item{state_nm}{State Name}
#'   \item{d_state_nm}{State Name}
#'   \item{agg_src}{Aggregator Source}
#'   \item{gis_src}{GIS Source}
#'   \item{src_date}{Source Date}
#'   \item{gis_acres}{GIS Acres}
#'   \item{source_paid}{Source Protected Area ID}
#'   \item{wdpa_cd}{WDPA Site Code}
#'   \item{pub_access}{Public Access}
#'   \item{d_access}{Public Access}
#'   \item{access_src}{Public Access Source}
#'   \item{access_dt}{Public Access Date}
#'   \item{gap_sts}{GAP Status Code}
#'   \item{d_gap_sts}{GAP Status Code}
#'   \item{gap_cd_src}{GAP Status Code Source}
#'   \item{gap_cd_dt}{GAP Status Code Date}
#'   \item{iucn_cat}{IUCN Category}
#'   \item{d_iucn_cat}{IUCN Category}
#'   \item{iucn_ct_src}{IUCN Category Source}
#'   \item{iucn_ct_dt}{IUCN Category Date}
#'   \item{date_est}{Date of Establishment}
#'   \item{comments}{Comments}
#'   \item{shape_leng}{Shape Length}
#'   \item{shape_area}{Shape Area}
#'   \item{area_rptd}{Area Repeated}
#'   \item{conflict}{Conflict}
#'   \item{bound_cf}{Bound}
#'   \item{duration}{Duration}
#'   \item{security}{Security}
#'   \item{esmt_hldr}{Easement Holder}
#'   \item{e_hold_typ}{Easement Holder Type}
#'   \item{stacked}{Stacked}
#'   \item{co_held}{Co-Held}
#'   \item{term}{Term}
#'   \item{nced_uid}{NCED Identifier}
#'   \item{prot_level}{Protection Level}
#'   \item{pri_con_fo}{Primary Characteristics to Conserve}
#'   \item{cons_focus}{Conservation Focus}
#'   \item{permanence}{Permanence}
#'   \item{ns_full}{Status in National System of MPAs}
#'   \item{mgmt_plan}{Management Plan}
#'   \item{fish_rstr}{Fishing Restriction}
#'   \item{prot_foc}{Protective Focus}
#'   \item{constancy}{Constancy}
#'   \item{vessel}{Vessel}
#'   \item{anchor}{Anchor}
#'   \item{mar_percent}{Percent Marine Area}
#'   \item{area_mar}{Marine Area}
#'   \item{marine}{Marine}
#'   \item{GEOID}{GEOID}
#'   \item{tract_latitude}{Tract Latitude}
#'   \item{tract_longitude}{Tract Longitude}
#'   \item{lat}{Latitude}
#' }
#' @source \url{https://www.usgs.gov/core-science-systems/science-analytics-and-synthesis/gap/science/pad-us-data-overview?qt-science_center_objects=4#qt-science_center_objects}
"protected_areas_processed"

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
#' @format A data frame with 1183 rows and 14 columns
#' \describe{
#'   \item{ncessch}{NCES school ID}
#'   \item{leaid}{Unique Agency Code}
#'   \item{leanm05}{Operating Agency}
#'   \item{schnamM05}{School Name}
#'   \item{lcity05}{City}
#'   \item{lstate05}{State}
#'   \item{mlocale}{Metro-Centric Locale (1 = Large City, 2 = Mid-size City, 3 = Urban Fringe of a Large City, 4 = Urban Fringe of a Mid-size City, 5 = Large Town, 6 = Small Town, 7 = Rural, outside Core Based Statistical Area (CBSA), 8 = Rural, inside CBSA)}
#'   \item{ulocale}{Urban-Centric Locale (11 = City, Large, 12 = City, Midsize, 13 = City, Small, 21 = Suburb, Large, 22 = Suburb, Midsize, 23 = Suburb, Small, 31 = Town, Fringe, 32 = Town, Distant, 33 = Town, Remote, 41 = Rural, Fringe, 42 = Rural, Distant, 43 = Rural, Remote)}
#'   \item{status05}{Operational Status (1 = School continues to be operational, 2 = School closed this year, 3 = New school, 4 = School has been in operation but is reported for the first time, 5 = School is reported with a different education agency, 6 = School is temporarily closed, 7 = School will be operational within 2 years, 8 = School was reported as permanently closed but has reopened)}
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
#' @format A data frame with 232 rows and 42 columns
#' \describe{
#'   \item{stabr}{State}
#'   \item{fscskey}{IMLS ID Number}
#'   \item{fscs_seq}{IMLS Assigned ID Suffix}
#'   \item{libid}{Library ID}
#'   \item{libname}{Name}
#'   \item{address}{Address}
#'   \item{city}{City}
#'   \item{zip}{Zip Code}
#'   \item{zip4}{Zip +4 Code}
#'   \item{cnty}{County}
#'   \item{phone}{Phone Number}
#'   \item{c_out_ty}{Outlet Code}
#'   \item{sq_feet}{Square Footage}
#'   \item{f_sq_ft}{Imputation Flag}
#'   \item{l_num_bm}{Number of Bookmobiles}
#'   \item{hours}{Public Service Hours Per Year}
#'   \item{f_hours}{Imputation Flag}
#'   \item{wks_open}{Number of Weeks Open}
#'   \item{f_wksopn}{Imputation Flag}
#'   \item{yr_sub}{FSCS Submission Year}
#'   \item{obereg}{Bureau of Economic Analysis Region Code}
#'   \item{statstru}{Structure Status}
#'   \item{statname}{Status of Library Name}
#'   \item{stataddr}{Status of the Address}
#'   \item{incitsst}{International Committee for Information Technology Standards (INCITS) State Code}
#'   \item{incitsco}{INCITS County Code}
#'   \item{gnisplac}{Geographic Names Information System Feature ID}
#'   \item{cntypop}{County Population}
#'   \item{locale}{Urban-Centric Locale Code}
#'   \item{centract}{Census Tract}
#'   \item{cenblock}{Census Block}
#'   \item{cdcode}{Congressional District}
#'   \item{cbsa}{Core Based Statistical Area}
#'   \item{microf}{Metropolitan and Micropolitan Statistical Area}
#'   \item{geomatch}{Geocoding Accuracy and Precision Level}
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
#' @format A data frame with 112 rows and 37 columns
#' \describe{
#'   \item{objectid}{Object ID}
#'   \item{id}{ID Number}
#'   \item{name}{Hospital Name}
#'   \item{address}{Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zip}{ZIP Code}
#'   \item{zip4}{ZIP +4 Code}
#'   \item{telephone}{Phone Number}
#'   \item{type}{Hospital Type}
#'   \item{status}{Status}
#'   \item{population}{Population}
#'   \item{county}{County}
#'   \item{countyfips}{County FIPS Code}
#'   \item{country}{Country}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{naics_code}{NAICS Code}
#'   \item{source}{Data Source}
#'   \item{sourcedate}{Date Extracted}
#'   \item{val_method}{Value Collection Method}
#'   \item{val_date}{Value Collection Date}
#'   \item{website}{Website}
#'   \item{state_id}{State ID}
#'   \item{alt_name}{Alternate Name}
#'   \item{st_fips}{State FIPS Code}
#'   \item{owner}{Owner}
#'   \item{ttl_staff}{Total Staff}
#'   \item{beds}{Number of Beds}
#'   \item{trauma}{Trauma Center Level}
#'   \item{helipad}{Has Helipad?}
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
#' @format A data frame with 104 rows and 58 columns
#' \describe{
#'   \item{objectid}{Object ID}
#'   \item{x}{X Coordinate}
#'   \item{y}{Y Coordinate}
#'   \item{fac_id}{Facility ID}
#'   \item{point_id}{Point ID}
#'   \item{near_id_1}{Near Point ID:}
#'   \item{near_id_2}{Near Point ID:}
#'   \item{near_id_3}{Near Point ID:}
#'   \item{air_code}{Air Code}
#'   \item{air_code2}{Air Code 2}
#'   \item{amtrakcode}{Amtrak Code}
#'   \item{ferry_code}{Ferry Code}
#'   \item{rail_id}{Rail ID}
#'   \item{bike_id}{Bike ID}
#'   \item{date_updte}{Date Updated}
#'   \item{address}{Address}
#'   \item{city}{City}
#'   \item{state}{State}
#'   \item{zipcode}{ZIP Code}
#'   \item{metro_area}{Metro Area}
#'   \item{fac_name}{Facility Name}
#'   \item{longitude}{Longitude}
#'   \item{latitude}{Latitude}
#'   \item{point_lon}{Point Longitude}
#'   \item{point_lat}{Point Latitude}
#'   \item{fac_type}{Facility Type}
#'   \item{ferry_t}{Transit Ferry Terminal}
#'   \item{ferry_i}{Intercity Ferry Terminal}
#'   \item{bus_t}{Transit Bus Station}
#'   \item{bus_i}{Intercity Bus Station}
#'   \item{bus_code_s}(Code Sharing Bus Station)
#'   \item{bus_supp}{Supplemental Bus Station}
#'   \item{rail_i}{Intercity Rail Service}
#'   \item{rail_c}{Commuter Rail Service}
#'   \item{rail_h}{Heavy-Rail Transit Station}
#'   \item{rail_light}{Light-Rail Transit Station}
#'   \item{air_serve}{Scheduled Airline Service Airport}
#'   \item{bike_share}{Bike Share System (open to general public)}
#'   \item{bike_sys_i}{IT-Automated Bike Share System}
#'   \item{bike_sys}{Station-Based Bike-Share System}
#'   \item{website}{Website}
#'   \item{notes}{Notes}
#'   \item{source}{Source}
#'   \item{i_service}{Intercity Service}
#'   \item{t_service}{Transit Service}
#'   \item{modes_serv}{Service Modes}
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
