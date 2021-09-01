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
#'   \item{site_name}{The Health Center site name}
#'   \item{bhcmis_org_id}{Bureau of Primary Health Care Health Center Management Information System (BHCMIS) Organization ID}
#'   \item{bphc_assigned_number}{Bureau of Primary Health Care (BPHC) Assigned Identification Number}
#'   \item{site_telephone_number}{Site Telephone Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{cleanup_name}{The name of the previously developed property}
#'   \item{brownfields_id}{Assessment, Cleanup, and Redevelopment Exchange System (ACRES) Property ID, an EPA database for Brownfields Grantees}
#'   \item{frs_id}{Facility Registry Service (FRS) ID, for the FRS, which is maintained by the EPA to provide quality information regarding facilities, sites, and places that are subject to regulation}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{cleanup_name}{The name of the property where a hazardous waste site is located}
#'   \item{epa_id}{EPA Identification Number, which identifies handlers of hazardous waste}
#'   \item{superfund_id}{Superfund ID Number}
#'   \item{frs}{Facility Registery Service (FRS) Identification Number, for the FRS, which is maintained by the EPA to provide quality information regarding facilities, sites, and places that are subject to regulation}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{contaminant_name}{The name of the contaminant that was found at the site}
#'   \item{media}{The media where the contaminant was found}
#'   \item{site_name}{The name of the site where the contaminant was found}
#'   \item{epa_id}{EPA Identification Number, which identifies handlers of hazardous waste}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{objectid}{Object ID, which SC DHEC uses for identification of sites when mapping with ArcGIS}
#'   \item{name}{The Name of the Market}
#'   \item{mail_phone}{Phone Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{npi}{National Provider Identifier Number, a 10-digit number which identifies an individual provider or healthcare entity for billing purposes}
#'   \item{basic_organization_name}{The Name of the Pharmacy Organization}
#'   \item{hours_of_operation}{Hours of Operation}
#'   \item{medicaid_id}{Medicaid Identifier}
#'   \item{addresses_telephone_number}{Telephone Number}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{lila_tracts_1and10}{Low income and low access census tracts, with low access meaning that the distance to a supermarket is greater than 1 mile for urban areas or 10 miles for rural areas}
#'   \item{lila_tracts_half_and10}{Low income and low access census tract, with low access meaning that the distance to a supermarket is greater than 1/2 mile for urban areas or 10 miles for rural areas}
#'   \item{lila_tracts_1and20}{Low income and low access census tract, with low access meaning that the distance to a supermarket is greater than 1 mile for urban areas or 20 miles for rural areas}
#'   \item{low_income_tracts}{Low income census tract, meaning that the median household income for the tract is below the Housing and Community Development's low-income limit}
#'   \item{poverty_rate}{Tract poverty rate, that is the percentage of households in the census tract whose median household income falls below the poverty threshold}
#'   \item{median_family_income}{Tract median family income}
#'   \item{GEOID}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{name}{The name of the recreational site or location}
#'   \item{feattype}{The type of recreational site found at this location}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#' @format A data frame with 3059 rows and 4 columns
#' \describe{
#'   \item{GEOID}{Census Block Group 12-digit FIPS Code (2018)}
#'   \item{nt_wlk_in}{National Walkability Index Score}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
#' }
#' @source \url{https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7B251AFDD9-23A7-4068-9B27-A3048A7E6012%7D}
"sc_walkability_index"

#' South Carolina Violent Crime Statistics
#'
#' The dataset of violent crime statistics by county in South Carolina in 2019 according to the South Carolina Law Enforcement Division.
#' Violent crime includes murder, sexual battery, robbery, and aggravated assault as a result of a personal confrontation between offender and
#' victim. The processed dataset includes the county name, the number of violent crimes, the crime rate according to the county population, the
#' clearance rate, and census information. The dataset is categorized as a Social and Community Context Determinant of Health.
#'
#' @format A data frame with 46 rows and 7 columns
#' \describe{
#'   \item{county}{County}
#'   \item{number}{The number of violent crimes that occurred in this county in 2019}
#'   \item{rate}{Crime rate, that is the number of crimes divided by the county population and multiplied by 10,000}
#'   \item{clearance}{Clearance rate, that is the number of crimes cleared by arrest or exceptional means divided by the total number of crimes}
#'   \item{geoid}{GEOID}
#'   \item{county_latitude}{Latitude of the County Centroid}
#'   \item{county_longitude}{Longitude of the County Centroid}
#' }
#' @source \url{https://www.sled.sc.gov/forms/statistics/2019%20Crime%20in%20South%20Carolina.pdf}
"violent_crime"

#' South Carolina Property Crime Statistics
#'
#' The dataset of property crime statistics by county in South Carolina in 2019 according to the South Carolina Law Enforcement Division.
#' Property crime includes breaking and entering, vehicle theft, larsony, and arson. The processed dataset includes the county name, the number
#' of property crimes, the crime rate according to the county population, the clearance rate, and census information. The dataset is categorized
#' as a Social and Community Context Determinant of Health.
#'
#' @format A data frame with 46 rows and 7 columns
#' \describe{
#'   \item{county}{County}
#'   \item{number}{The number of property crimes that occurred in this county in 2019}
#'   \item{rate}{Crime rate, that is the number of crimes divided by the county population and multiplied by 10,000}
#'   \item{clearance}{Clearance rate, that is the number of crimes cleared by arrest or exceptional means divided by the total number of crimes}
#'   \item{geoid}{GEOID}
#'   \item{county_latitude}{Latitude of the County Centroid}
#'   \item{county_longitude}{Longitude of the County Centroid}
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
#'   \item{chem_name}{The name of the chemical released into the environment}
#'   \item{facility_name}{The name of the facility responsible for releasing the chemical}
#'   \item{tri_chem_id}{TRI Chemical ID, used to classify and identify chemicals}
#'   \item{tri_facility_id}{TRI Facility ID, uniquely assigned to each facility that reports to the TRI}
#'   \item{naics_codes}{North American Industry Classification System (NAICS) code, used by Federal statistical agencies to classify business establishments}
#'   \item{total_off_site_release}{The total amount of the toxic chemical released to air, water, land, and underground injection wells on or at a facility's site during the calendar year}
#'   \item{total_on_off_site_release}{The total amount of the toxic chemical that is transferred from a facility site to another site and then released to the environment via water, land or underground injection wells during the calendar year (January 1 - December 31)}
#'   \item{total_on_site_release}{The total amount (in pounds) of the toxic chemical released to air, water, land, and underground injection wells during the calendar year (January 1 - December 31)}
#'   \item{total_production_related_waste}{Total Pounds of Toxic Chemicals Released due to Production}
#'   \item{land_total_release}{The release estimate (in pounds) reported by the facility as LAND releases.}
#'   \item{air_total_release}{The release estimate (in pounds) reported by the facility as AIR releases.}
#'   \item{water_total_release}{The release estimate (in pounds) reported by the facility as WATER releases.}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{svi_value}{The overall value of social vulnerability determined by the consideration of several social determinants of health}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{census_tract_2}{County name and census tract}
#'   \item{year}{Data Collection Year}
#'   \item{value}{Percentage of households without access to internet services in the census tract}
#'   \item{data_comment}{NA}
#'   \item{x8}{NA}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{category}{Category of protected area}
#'   \item{unit_nm}{Name of the protected area}
#'   \item{GEOID}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{state_fips}{State 2-Digit FIPS Code}
#'   \item{state}{State}
#'   \item{geoid}{GEOID}
#'   \item{census_tract_2}{County Name and Census Tract}
#'   \item{year}{Data Collection Year}
#'   \item{value}{Percentage of land that is impervious to water due to development in the census tract}
#'   \item{data_comment}{NA}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{state_fips}{State 2-digit FIPS Code}
#'   \item{state}{State}
#'   \item{geoid}{GEOID}
#'   \item{census_tract_2}{County Name and Census Tract}
#'   \item{year}{Data Collection Year}
#'   \item{value}{Percentage of housing units that do not have access to a vehicle in the census tract}
#'   \item{data_comment}{NA}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{metro_nonmetro_status_2013_0_nonmetro_1_metro}{Metro/Nonmetro Status (1 = Metro)}
#'   \item{economic_types_type_2015_update_non_overlapping}{Number of non-overlapping economic types present in the county}
#'   \item{economic_type_label}{Economic Type Label}
#'   \item{farming_2015_update}{Farm-Dependent}
#'   \item{mining_2015_update}{Mining-Dependent}
#'   \item{manufacturing_2015_update}{Manufacturing-Dependent}
#'   \item{government_2015_update}{Government-Dependent}
#'   \item{recreation_2015_update}{Recreation-Dependent}
#'   \item{nonspecialized_2015_update}{Nonspecialized}
#'   \item{low_education_2015_update}{County is deemed a low education county}
#'   \item{low_employment_cnty_2008_2012_25_64}{County is deemed a low employment county}
#'   \item{pop_loss_2010}{County experienced resident decline}
#'   \item{retirement_dest_2015_update}{County is deemed a retirement destination}
#'   \item{persistent_poverty_2013}{County experienced persistent poverty}
#'   \item{persistent_related_child_poverty_2013}{County experienced persistent related child poverty}
#'   \item{geoid}{GEOID}
#'   \item{county_latitude}{Latitude of the County Centroid}
#'   \item{county_longitude}{Longitude of the County Centroid}
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
#'   \item{ncessch}{National Center for Education Statistics (NCES) school ID, the first seven digits are the school district ID and the last five digits uniquely identify the individual school}
#'   \item{leaid}{Unique agency ID assigned by the NCES}
#'   \item{leanm05}{Name of the operating agency responsible for the school}
#'   \item{schnam05}{School Name}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{libid}{Library identification code assigned by the state}
#'   \item{libname}{Name of the library}
#'   \item{phone}{Phone Number}
#'   \item{hours}{Number of hours per year that the library is open for public service}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{fac_id}{Unique transporation facility ID}
#'   \item{fac_name}{Facility name}
#'   \item{notes}{Notes}
#'   \item{mode_bus}{Facility provides bus services}
#'   \item{mode_air}{Facility provides sir services}
#'   \item{mode_rail}{Facility provides rail services}
#'   \item{mode_ferry}{Facility provides ferry services}
#'   \item{mode_bike}{Facility provides bike services}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
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
#'   \item{permit_type}{Type of services the facility is permitted to provide}
#'   \item{name_of_facility}{Facility name}
#'   \item{geoid}{GEOID}
#'   \item{tract_latitude}{Latitude of the Census Tract Centroid}
#'   \item{tract_longitude}{Longitude of the Census Tract Centroid}
#'   \item{lat}{Latitude}
#'   \item{lon}{Longitude}
#' }
#' @source \url{https://sc-department-of-health-and-environmental-control-gis-sc-dhec.hub.arcgis.com/datasets/04d86b6899fc450288ba07d0dcab2d73_0/explore}
"health_facilities"
