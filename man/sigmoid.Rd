% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/curve-shape.R
\name{sigmoid}
\alias{sigmoid}
\title{Animate sigmoid path}
\usage{
sigmoid(x_start = 0, x_end = 1, y_start = 0, y_end = 1, scale = 5, n = 100)
}
\arguments{
\item{x_start}{The x-coordinate of the starting point.}

\item{x_end}{The x-coordinate of the ending point.}

\item{y_start}{The y-coordinate of the starting point.}

\item{y_end}{The y-coordinate of the ending point.}

\item{scale}{A numeric value that controls the length of the sigmoid.}

\item{n}{A numeric value that controls the number of points between
starting and ending points.}
}
\value{
Return a path in a data frame format
}
\description{
This function creates a path from the starting point (x_start, y_start)
to the ending point (x_end, y_end) with the sigmoid shape.
}
\examples{
path <- sigmoid()

ggplot2::ggplot(data = path, ggplot2::aes(x = x, y = y)) + ggplot2::geom_point()

}
\references{
Recreate - Sankey flow chart. (n.d.). Emil Hvitfeldt.
Retrieved April 13, 2023, from
https://www.emilhvitfeldt.com/post/2018-03-20-recreate-sankey-flow-chart/
}
\keyword{internal}
