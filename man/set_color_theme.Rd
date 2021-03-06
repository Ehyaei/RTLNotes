% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/themes.R
\name{set_color_theme}
\alias{set_color_theme}
\title{Set ggplot default theme and palette}
\usage{
set_color_theme(base_size = 12)
}
\arguments{
\item{base_size}{base font size, given in pts.}
}
\value{
set theme and color to all ggplot figures
}
\description{
Set ggplot default theme and palette
}
\examples{
\dontrun{
library(ggplot2)
set_color_theme()
ggplot(data = mtcars, aes(x = cyl)) +
  geom_bar(aes(y = ..count..,fill = as.character(cyl)))
  }
}
