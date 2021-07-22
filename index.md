
# dhomer <img src="man/figures/logo.png" align="right" />

[![Lifecycle:Experimental](https://img.shields.io/badge/Lifecycle-Experimental-339999)](https://lifecycle.r-lib.org/articles/stages.html#experimental)



The dhomer package provides easy access to South Carolina data that may impact social determinants of health.

This package contains several datasets provided by the EPA, HRSA, SC DHEC, SLED, USDA, Esri, and other sites (to be specified).  The data is preprocessed into a common format to support spatial analysis.

For purposes of this project, social determinants of health can be categorized and the datasets can be classified into the following: Economic Stability, Education, Social and Community Context, Health and Healthcare, and Natural and Built Environment.

The data sets are:

Economic Stability:
* South Carolina Food Deserts- The USDA's Food Access Research Atlas includes data on census tracts considered to be low-income, low-access food deserts based on measures of supermarket accessibility. The processed file includes census tracts deemed to be food deserts, including geographic and demographic information for each tract.
* SC County Typology Codes- The USDA's determination of each county in South Carolina's economic dependence and other social characteristics which overlap with the county's economy. The processed file includes the county characteristics, GEOID, latitude/longitude, and county centroids.

Education:
* SC Public Schools- The NCED's published database of public elementary and secondary schools in South Carolina. The processed file includes the school name, identifiers, GEOID, latitude/longitude, and census tract centroids.
* SC Public Libraries- This dataset includes the locations and important details regarding all of the public libraries and library outlets in South Carolina. The processed dataset includes name, identifiers, details about functionality and capabilities, GEOID, latitude/longitude, and census tract centroids.

Social and Community Context:
* South Carolina 2019 Violent Crime Statistics- The South Carolina Law Enforcement Division compiles South Carolina crime statistics annually into a report titled "Crime In South Carolina." The processed file includes their statistics for violent crime (number of crimes, crime rate, and clearance rate) by county in the year 2019 with county geography information.
* South Carolina 2019 Property Crime Statistics- The South Carolina Law Enforcement Division compiles South Carolina crime statistics annually into a report titled "Crime In South Carolina." The processed file includes their statistics for property crime (number of crimes, crime rate, and clearance rate) by county in the year 2019 with county geography information.
* South Carolina Recreational Areas- A catalog of recreational areas in South Carolina, categorized into beaches, golf courses, and park and recreation areas. The processed file includes the area name, categorization, GEOID, latitude/longitude, and census tract centroids.
* Social Vulnerability Index- The CDC and ATSDR consider several census variables in order to determine the social vulnerability of each census tract in the United States in order to assess the areas in greatest need following natural disasters. The processed file includes all of the reference data used to make the determination, as well as the overall SVI score.
* Percent of Households Without Internet Access- The CDC's estimates for percentage of households within each census tract that does not have reliable access to internet based on the ACS, American Factfinder, and US Census Bureau statistics. The processed file includes the census tract, estimates, GEOID, latitude/longitude, and census tract centroids.
* Percent of Housing Units Without Access to a Vehicle- The CDC's estimates for percentage of housing units within each census tract that do not have access to a vehicle. The processed file includes the census tract, estimates, GEOID, latitude/longitude, and census tract centroids.
* South Carolina Farmer's and Roadside Markets- SCDHEC compiled a list of farmer's and roadside markets in South Carolina which provide fresh produce to their communities. The data includes the market name, location, months of operation, contact information, latitudes/longitudes, GEOIDs, and census tract centroids.

Health and Healthcare:
* South Carolina Free Clinics- Free clinics provide medical care to the impoverished and uninsured residents of South Carolina. The data includes the clinic names, addresses, latitudes/longitudes, GEOIDs, and census tract centroids.
* South Carolina Pharmacies- A list of the pharmacies in South Carolina. The data includes the pharmacy names, locations, National Provider Identifer (NPI), details on the pharmacy services and pharmacists, contact information, latitudes/longitudes, GEOIDs, and census tract centroids.
* South Carolina Health Facilities- SC DHEC compiled a list of licensed health facilities according to their records. The data includes a variety of health services, including their categorization, facility names, facility locations, contact information, latitudes/longitudes, GEOIDs, and census tract centroids.

Natural and Built Environment:
* US EPA South Carolina Brownfield Sites- Brownfield sites are previously developed sites whose contaminants prevent redevelopment. The data includes the site names, addresses, latitudes/longitudes, GEOIDs, and census tract centroids.
* US EPA Contaminants of Concern- The US EPA compiled a list of uniquely difficult contaminants to clean in the environment. The list includes the site where the contaminant is found, the location, the contaminant found, details about cleanup efforts, latitudes/longitudes, GEOIDs, and census tract centroids.
* US EPA South Carolina Superfund Sites- Superfund sites are contaminated sites identified by the US EPA and has allocated funds towards cleaning. The data includes the site names, locations, latitudes/longitudes, GEOIDs, and census tract centroids.
* National Walkability Index for South Carolina Block Groups- The US EPA's National Walkability Index scores each block group in the United States based on its relative walkability. The processed file includes only South Carolina scores with geographic, geometric, and census information.
* Average Percent of Impervious Land Due to Development- This CDC dataset is comprised of tract-level estimates for the percentage of land within the tract that is impervious to water due to development. The processed dataset includes location data such as FIPS code, GEOID, and centroid latitude/longitude, as well as the percentage value.
* Toxic Release Inventory Form R and Form A Submissions- Published by the EPA, this dataset includes all of the sites that submitted a Form R or Form A as part of the Toxic Release Inventory program, indicating some level of toxic chemical release into the environment compulsory with the site's functioning. The processed dataset includes the site name and identifiers, the chemicals being released, where and how much is being released, GEOID, latitude/longitude, and census tract centroids.
* Intermodal Public Transit Terminals- Compiled in the Homeland Infrastructure Foundation-Level Data open database, this dataset includes information on transit terminals for various modes of public transportation. The processed dataset includes terminal information, details on the mode of transportation provided, GEOID, latitude/longitude, and census tract centroids. 
* SC Protected Areas- This dataset includes information on lands and waters throughout South Carolina that are protected from development. The processed dataset marks every point along the perimeter of each protected area polygon and is labeled with information regarding the area, the ownership and management of the area, the conservation efforts there, GEOID, latitude/longitude, and census tract centroids.


# What's New

# Installing dhomer

Install from github


# Resources



## Contributor Code of Conduct
Please note that this project is released with a [Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.




