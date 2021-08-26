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
#' A dataset containing HRSA Health Center sites, which receive funding from HRSA and provide care throughout the United States regardless
#' of the patient's ability to pay. The Health Center program is one of the largest systems of primary and preventive care providers and is
#' committed to providing care to the nation's most vulnerable populations. It is estimated that 1 in 11 people receive care from a HRSA
#' Health Center. The processed dataset includes the site name, identification numbers, site telephone numbers, latitude/longitude of the site,
#' and census tract information. This dataset is categorized within Health and Healthcare Determinants of Health.
#'
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
#' A dataset containing an index of brownfield sites in South Carolina compiled by the US EPA. Brownfields are previous developments that are
#' barred from redevelopment due to possible contamination. The EPA provides loans to local environmental control agencies to fund brownfield
#' cleanups so that the land can be redeveloped. Brownfields create an economic and environmental strain on the community, which can adversely
#' affect health. The processed dataset includes the site name, identification numbers, latitude/longitude, and census tract information. This
#' dataset is categorized as a Natural and Build Environment Determinant of Health.
#'
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
#' A dataset containing an index of US EPA Superfund sites in South Carolina. Superfund sites are the EPA's determination of the most
#' contaminated lands and environmental emergencies which require a long-term effort in order to completely eliminate the hazardous materials.
#' The processed dataset includes the site name, identification numbers, latitude/longitude, and census tract information. The dataset is
#' categorized as a Natural and Built Environment Determinant of Health.
#'
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
#' }
#' @source \url{https://ofmpub.epa.gov/apex/cimc/f?p=100:10::::::}
"superfund"

#' Contaminants of Concern
#'
#' The US EPA's records of contaminants of concern from Superfund decision documents from 1982-2017. The file includes active and deleted sites
#' from the National Priority List, which is beneficial because previously contaminated sites could still be having a long-term health effect
#' on community members now, even if they have since been eliminated. The processed dataset includes the contaminant information, the media it
#' is was/is affecting in the site, the site name, identification numbers, latitude/longitude, and census tract information. The dataset is
#' categorized as a Natural and Built Environment Determinant of Health.
#'
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
#' The dataset of the free medical clinics in South Carolina. Free clinics provide care to uninsured members of the community. They generally
#' have a set criteria for who is eligible to receive care from the clinic based on household size and income. Many free clinics provide
#' primary care services and treatment for chronic conditions, although some clinics provide specialty care or host specialized providers on
#' specific days, and provide referrals for patients in need of extra care. The processed dataset includes the clinic name, specialty (if any),
#' hours of operation [NOT ADDED IN YET], latitude/longitude, and census tract information. The dataset is categorized as a Health and
#' Healthcare Determinant of Health.
#'
#' NEED TO CHECK for any requirements in redistributing data such as a notice
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
#' The dataset of the farmer's and roadside markets in South Carolina, compiled by SC DHEC. These markets provide seasonal access to local
#' produce to their communities, which tends to be harder to access especially in communities that lack access to a chain supermarket store.
#' The processed dataset includes the market name, phone number, latitude/longitude, and census tract information. The dataset is categorized
#' as a Social and Community Context Determinant of Health.
#'
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
#' The dataset of the pharmacies in South Carolina, compiled by Select Health of South Carolina. The pharmacies provide access to prescription
#' medicines and, in many cases, vaccinations to the community. The processed dataset includes the pharmacy name, NPI identification number,
#' hours of operation, Medicaid ID, telephone number, latitude/longitude, and census tract information. The dataset is categorized as a Health
#' and Healthcare Determinant of Health.
#'
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
#' The dataset of census tracts deemed to be food deserts by the USDA. Food deserts are areas deemed to be both low-income and low-access in
#' terms of accessibility to a supermarket store. Although communities may have access to convenience stores and independent grocers, the supply
#' in these stores if often unreliable and does not necessarily provide access to healthy, affordable food. The USDA has three different
#' determinations for "low-access": 1 mile (urban)/10 miles (rural) from the closest supermarket, half a mile (urban)/10 miles from the closest
#' supermarket, and 1 mile (urban)/20 miles (rural) from the closest supermarket. The processed dataset includes the census tract GEOID, three
#' different determinations of food desert status based on the levels of access, poverty rate, and median family income. The dataset is
#' categorized as an Economic Stability Determinant of Health.
#'
#' @format A data frame with 1091 rows and 10 columns
#' \describe{
#'   \item{census_tract}{Census tract}
#'   \item{lila_tracts_1and10}{Low income and low access tract measured at 1 mile for urban areas and 10 miles for rural areas}
#'   \item{lila_tracts_half_and10}{Low income and low access tract measured at 1/2 mile for urban areas and 10 miles for rural areas}
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
#' The dataset of common recreational landmarks, including golf courses, beaches, amusement parks, and park and recreation areas in South
#' Carolina. These spaces are publicly available, although sometimes at a fee, and are meant to be used for 'fun' activities. Availability of
#' these areas could be directly related to children's ability to play and socialize, and should also be considered in proximity to other
#' determinant of health burdens. The processed dataset includes the area name, the type of recreational area it is, latitude/longitude, and
#' census tract information. The dataset is categorized as a Social and Community Context Determinant of Health.
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
#' The dataset of measures from the US EPA's National Walkability Index for South Carolina block groups specifically. The National Walkability
#' Index considers features of the natural and built environment to determine community member's ability to walk in that block group and then
#' gives each block group a score, with a higher score indicating a more walkable community. The processed dataset includes the block group
#' GEOID, that index score and the block group geometry. The dataset is categorized as a Natural and Built Environment Determinant of Health.
#'
#' @format A data frame with 3059 rows and 3 columns
#' \describe{
#'   \item{GEOID}{Census Block Group 12-digit FIPS Code (2018)}
#'   \item{nt_wlk_in}{National Walkability Index Score}
#'   \item{block_latitude}{Census Block Group Centroid Latitude}
#'   \item{block_longitude}{Census Block Group Centroid Longitude}
#' }
#' @source \url{https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7B251AFDD9-23A7-4068-9B27-A3048A7E6012%7D}
"sc_walkability_index"

#' South Carolina Violent Crime Statistics
#'
#' The dataset of violent crime statistics by county in South Carolina in 2019 according to the South Carolina Law Enforcement Division.
#' Violent crime includes murder, sexual battery, robbery, and aggravated assault as a result of a personal confrontation between offender and
#' victim. The processed dataset includes the county name, the number of violent crimes, the crime rate according to the county population, the
#' clearance rate (the percentage of crimes cleared by arrest or exceptional means), and census information. The dataset is categorized as a
#' Social and Community Context Determinant of Health.
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
#' The dataset of property crime statistics by county in South Carolina in 2019 according to the South Carolina Law Enforcement Division.
#' Property crime includes breaking and entering, vehicle theft, larsony, and arson. The processed dataset includes the county name, the number
#' of property crimes, the crime rate according to the county population, the clearance rate (the percentage of crimes cleared by arrest or
#' exceptional means), and census information. The dataset is categorized as a Social and Community Context Determinant of Health.
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
#' The dataset of sites in South Carolina that have submitted a Toxic Release Inventory (TRI) Form R or A. The TRI tracks the management of
#' hazardous chemicals which pose a threat to the environment or human health. The program collects annual data from sites that manage hazardous
#' chemicals and requires the reporting of the amount of toxic chemicals released into the environment via land, water, and air. Form R is
#' required for sites that: utilize a PBT chemical (such as lead), manufacture, process, or use more than 1,000,000 pounds of a toxic chemical,
#' or has an annual reportable amount of release, recycling, energy recovery, or treatment of a toxic chemical that is more than 500 pounds.
#' Form A is to be filled out for: non-PBT chemicals, use of less than 1,000,000 pounds of a toxic chemical, and a annual reportable amount of
#' less than 500 pounds of a toxic chemical.  The dataset includes the chemical name, facility name, identifications, toxic chemical release
#' data (in pounds), latitude/longitude, and census tract information. The dataset is categorized as a Natural and Built Environment
#' Determinant of Health.
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
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://enviro.epa.gov/facts/tri/form_ra_download.html}
"tri"

#' CDC/ATSDR Social Vulnerability Index
#'
#' The dataset of social vulnerability for SC census tract groups according to a CDC/ATSDR determination. The dataset was originally created to
#' identify areas in the United States that would likely need extra assistance in the case of hazardous situations and natural disasters so as
#' to provide more adequate care in those situations. However, social vulnerability can also be used as a determinant of health and assist in
#' the understanding of health disparities in the US. The social vulnerability index considers a wide array of factors including: poverty level,
#' household composition and size, minority status, language spoken, housing type, and vehicle access. These factors were compiled into a single
#'  score of social vulnerability. The processed dataset includes the census tract GEOID, the social vulnerability score, and census information.
#'  The dataset is categorized as a Social and Community Context Determinant of Health.
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
#' The dataset of census tracts in South Carolina with percentage estimates of households without internet access. Internet access directly
#' affects an individual's ability to complete work or school, shop, receive up-to-date information, and locate resources. The processed dataset
#'  includes the census tract, value estimate, and census information. The dataset is categorized as a Social and Community Context Determinant
#'  of Health.
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
#' The dataset of land and waters in South Carolina which are dedicated to the preservation of biological diversity and available for natural,
#' recreational, and cultural purposes. These areas are protected from development and provide natural green spaces to the community. The
#' processed dateset includes each latitude/longitude point along the border of each area polygon, the protection category, area name, and census
#' information. The dataset is categorized as a Natural and Built Environment Determinant of Health.
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
#' The dataset of South Carolina census tracts with percentage estimates for the amount of land that is impervious to water due to development.
#' Impervious land increases precipitation runoff, as the water is not able to soak into the earth, and mobilizes pollutants and contaminants in
#' the runoff, allowing it an avenue to enter the waterways and spread its toxic effect. The processed dataset includes the census tract, value
#' estimate, and census information. The dataset is categorized as a Natural and Built Environment Determinant of Health.
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
#' The dataset of South Carolina census tracts with percentage estimates of housing units with no vehicle access. Vehicle access plays a direct
#' role in an individual's ability to access food, community resources, and healthcare, especially in areas that are not highly walkable. The
#' processed dataset includes the census tract, the value estimate, and census information. The dataset is categorized as a Social and Community
#' Context Determinant of Health.
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
#' The dataset of county social and economic characteristics, as well as a classification of economic dependence. A county's economic dependence
#' falls into one of six categories: farming, mining, manufacturing, government, recreation, or non-specialized. A county's dependence is
#' labelled with a '1'. Also included in the processed dataset is levels of low education, population loss, retirement migration, persistent
#' poverty, and persistent child-related poverty, as well as census information. The dataset is categorized as an Economic Stability Determinant
#' of Health.
#'
#' @format A data frame with 46 rows and 21 columns
#' \describe{
#'   \item{fip_stxt}{5-Digit FIPS Code}
#'   \item{state}{State}
#'   \item{county_name}{County}
#'   \item{metro_nonmetro_status_2013_0_nonmetro_1_metro}{Metro/Nonmetro (1 = Metro)}
#'   \item{economic_types_type_2015_update_non_overlapping}{Number of Non-Overlapping Economic Types}
#'   \item{economic_type_label}{Economic Type Label}
#'   \item{farming_2015_update}{Farm-Dependent}
#'   \item{mining_2015_update}{Mining-Dependent}
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
#' The dataset of South Carolina public elementary and secondary schools. Proximity to the school may be a determinant in school completion and,
#' thus, higher educational attainment, especially for households without access to a vehicle. Similarly, because a great deal of time is spent
#' in school, proximity of the school to other determinants of health should also be considered. The processed dataset includes the school name,
#' identification numbers, latitude/longtiude, and census information. The dataset is categorized as an Education Determinant of Health.
#'
#' @format A data frame with 1183 rows and 9 columns
#' \describe{
#'   \item{ncessch}{NCES school ID}
#'   \item{leaid}{Unique Agency Code}
#'   \item{leanm05}{Operating Agency}
#'   \item{schnam05}{School Name}
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
#' The dataset of public libraries and library outlets in South Carolina. Public libraries are an accessible collection of books and other
#' resources for the community. The processed dataset includes the library name, identification numbers, telephone numbers, hours open,
#' latitude/longitude, and census information. The dataset is categorized as an Education Determinant of Health.
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

#' South Carolina Intermodal Passenger Transportation Terminals
#'
#' The dataset of South Carolina's passenger transportation terminals that provide various modes of transportation. Public transit is essential
#' for those without access to a vehicle and those living areas with a low walkability index. The dataset classifies the transit terminals as
#' providing bus, air, rail, ferry, or bike transportation, as well as includes the facility name, identification number, latitude/longitude,
#' and census information. The dataset is categorized as a Natural and Built Environment Determinant of Health.
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
#' A dataset of health facilities licensed to provide care in South Carolina compiled by SC DHEC. The list includes a wide array of care
#' specialties. Some providers are also located outside of South Carolina, eitehr because they are located close to the South Carolina border,
#' are able to travel into South Carolina to provide their care, or are able to provide care from a distance through mailing or telehealth. The
#' processed dataset includes the facility name, specialty permit type, latitude/longitude, and census information. The dataset is categorized
#' as a Health and Healthcare Determinant of Health.
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
