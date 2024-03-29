% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/course-metadata.R
\name{get_upcoming_course_dates}
\alias{get_upcoming_course_dates}
\title{Get the dates for the next course.}
\usage{
get_upcoming_course_dates(id)
}
\arguments{
\item{id}{The ID of the course, found by running \code{\link[=list_course_ids]{list_course_ids()}}.}
}
\value{
A character vector.
}
\description{
Get the dates for the next course.
}
\examples{

get_upcoming_course_dates("intro")
get_upcoming_course_dates("inter")
get_upcoming_course_dates("adv")
}
