% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{sc_walkability_index}
\alias{sc_walkability_index}
\title{South Carolina Walkability Index}
\format{
A data frame with 3059 rows and 4 columns
\describe{
\item{GEOID}{Census Block Group 12-digit FIPS Code (2018)}
\item{nt_wlk_in}{National Walkability Index Score}
\item{tract_latitude}{Latitude of the Census Tract Centroid}
\item{tract_longitude}{Longitude of the Census Tract Centroid}
}
}
\source{
\url{https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=\%7B251AFDD9-23A7-4068-9B27-A3048A7E6012\%7D}
}
\usage{
sc_walkability_index
}
\description{
The dataset of measures from the US EPA's National Walkability Index for South Carolina block groups specifically. The National Walkability
Index considers features of the natural and built environment to determine community member's ability to walk in that block group and then
gives each block group a score, with a higher score indicating a more walkable community. The processed dataset includes the block group
GEOID, that index score and the block group geometry. The dataset is categorized as a Natural and Built Environment Determinant of Health.
}
\keyword{datasets}
