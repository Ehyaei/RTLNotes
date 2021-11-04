#' RTLNotes palette
#'
#' This palette contains nine colors for plotting eye-catching graphs.
#'
#' @return a vector containing the colors.
#' @export
#'
#' @examples
#' library(RTLNotes)
#' scales::show_col(palette_RTLNotes())
palette_RTLNotes <- function() {
RTLNotes::palette_colors$HTML
}

#' Color scale constructor for RTLNotes palette
#'
#' @param ... Additional arguments passed to ggplot2::discrete_scale()
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))+
#'   scale_fill_RTLNotes()
scale_fill_RTLNotes <- function(...){
  ggplot2::discrete_scale("fill","RTLNotes",
                          scales::manual_pal(values = RTLNotes::palette_colors$HTML), ...)
}


#' Fill scale constructor for RTLNotes palette
#'
#' @param ... Additional arguments passed to discrete_scale()
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = wt, y= mpg,color = as.character(cyl))) +
#'   geom_point()+scale_color_RTLNotes()
scale_color_RTLNotes <- function(...){
  ggplot2::discrete_scale("color","RTLNotes",scales::manual_pal(values =   RTLNotes::palette_colors$HTML), ...)
}
