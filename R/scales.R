#' Max-Planck institute palette
#'
#' This palette was inspired by the CD manual (available \href{https://docplayer.org/2328711-Max-planck-institut-das-erscheinungsbild-der-max-planck-gesellschaft-4-ueberarbeitete-auflage.html}{here} )
#'  of the Max Planck Society.
#'
#' @return a vector containing the colors.
#' @export
#'
#' @examples
#' library(MPIThemes)
#' scales::show_col(palette_mpi())
palette_mpi <- function() {
MPIThemes::palette_colors$HTML
}

#' Color scale constructor for MPI palette
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
#'   scale_fill_mpi()
scale_fill_mpi <- function(...){
  ggplot2::discrete_scale("fill","mpi",
                          scales::manual_pal(values = MPIThemes::palette_colors$HTML), ...)
}


#' Fill scale constructor for MPI palette
#'
#' @param ... Additional arguments passed to discrete_scale()
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = wt, y= mpg,color = as.character(cyl))) +
#'   geom_point()+scale_color_mpi()
scale_color_mpi <- function(...){
  ggplot2::discrete_scale("color","mpi",scales::manual_pal(values =   MPIThemes::palette_colors$HTML), ...)
}
