% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-precourse-survey.R
\name{get_precourse_survey}
\alias{get_precourse_survey}
\title{Get the (slightly cleaned) pre-course survey from Google Sheets.}
\usage{
get_precourse_survey(id)
}
\arguments{
\item{id}{The ID of the course, found by running \code{\link[=list_course_ids]{list_course_ids()}}.}
}
\value{
A \link[tibble:tibble]{tibble::tibble}.
}
\description{
Get the (slightly cleaned) pre-course survey from Google Sheets.
}
\examples{
\dontrun{
get_precourse_survey("intro")
}
}
