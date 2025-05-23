% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post-course.R
\name{create_course_tag}
\alias{create_course_tag}
\title{Create a tag after finishing a course and release on GitHub/GitLab}
\usage{
create_course_tag(start_date, message)
}
\arguments{
\item{start_date}{The date the course starts.}

\item{message}{A message to add to the git tag.}
}
\value{
Nothing. Used for the side effect of adding a git tag and opening
the URL to make a release.
}
\description{
Create a tag after finishing a course and release on GitHub/GitLab
}
\examples{
\dontrun{
# create_course_tag(get_course_dates("adv")[1], "First version of the advanced course material for December 2022.")
}
}
