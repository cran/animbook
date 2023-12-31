% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funnel-web-plot.R
\name{funnel_web_plot}
\alias{funnel_web_plot}
\title{Turn the data into a facetted plot}
\usage{
funnel_web_plot(data, group_palette = NULL, ...)
}
\arguments{
\item{data}{The animbook object returned from the prep function.}

\item{group_palette}{The vector of the palette used by the function to supply the color to each group.}

\item{...}{Additional arguments for customization. See details for more information.}
}
\value{
Return a ggplot object.
}
\description{
This function takes in the data which has been prepared by either \code{\link[=anim_prep]{anim_prep()}} or \code{\link[=anim_prep_cat]{anim_prep_cat()}} and
return the ggplot object. The user can still modify the plot the same as normal using the ggplot2 function.
}
\details{
This function takes prepared data and generates a ggplot object.
The funnel web plot is the plot that shows the line facetted plot showing the pattern between
time period.
The line jitter can be controlled using additional arguments such as height and width
to control the appearance. For the shading area, the alpha argument can be used.
}
\examples{
animbook <- anim_prep(data = osiris, id = ID, values = sales, time = year, group = japan)

funnel_web_plot(animbook)

}
