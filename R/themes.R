#' Theme 'scientific'
#'
#' @param base_size base font size, given in pts.
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))+
#'   theme_scientific()+
#'   scale_fill_mpi()
#'   }
theme_scientific <- function(base_size = 12, base_family = "Parastoo FD-WOL"){

  fontPath <- system.file("rmarkdown", "templates",
                          "latex_report", "skeleton","src","fonts",
                          package = "RTLNotes")

  sysfonts::font_add(family = "Parastoo",
                     regular = paste0(fontPath,"/Parastoo-FD-WOL.ttf"),
                     bold = paste0(fontPath,"/Parastoo-Bold-FD-WOL.ttf")
  )

  theme_bw(base_size = base_size, base_family = base_family) +
    theme(
      panel.border = element_blank(),
      panel.background = element_blank(),
      plot.background = element_blank(),
      legend.box.background = element_blank(),
      legend.background = element_rect(fill = "transparent"),
      panel.grid.major = element_line(color = "gray70", size = .2, linetype = "dotted"),
      panel.grid.minor = element_line(color = "gray70", size = .1, linetype = "dotted"),
      axis.line.x = element_line(color = "gray40",size = .4),
      axis.line.y = element_line(color = "gray40",size = .4),
      axis.ticks = element_line(color = "gray20"),
      legend.title = element_text(size = rel(0.8), color = "gray20", vjust = 0,hjust = 0.5),
      legend.key = element_rect(fill = NA, color = NA),
      legend.text = element_text(size = rel(.7), color = "black"),
      plot.title = element_text(color = "gray20", size = rel(1.2),face = "bold", hjust = .5),
      plot.subtitle = element_text(color = "gray20", size = rel(0.9),face = "bold", hjust = 1),
      axis.text.x = element_text(size = rel(.7), color = "gray20", family = base_family),
      axis.text.y = element_text(size = rel(.7), color = "gray20", family = base_family),
      axis.title.x = element_text(size = rel(0.8), color = "gray20", vjust = 0),
      axis.title.y = element_text(size = rel(0.8), color="gray20", vjust = 1),
      plot.margin = margin(25, 25, 25, 25),
      plot.caption = element_text(size = rel(0.8), face = "italic"),
      strip.background = element_blank(),
      strip.text = element_text(face = "bold",vjust = -1,hjust = 0.5,color = "gray20")
    )
}


#' Theme for Plot Heatmaps
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' library(ggplot2)
#' # Dummy data
#' x <- LETTERS[1:20]
#' y <- paste0("var", seq(1,20))
#' data <- expand.grid(X=x, Y=y)
#' data$Z <- runif(400, 0, 5)
#' # Heatmap
#' ggplot(data, aes(X, Y, fill= Z)) +
#'   geom_tile()+
#'   theme_map()

theme_map = function(){
  theme_void()+
    theme(
      legend.position="bottom",
      legend.direction="horizontal",
      legend.title=element_text(size=rel(.8),vjust = 1,face = "bold"),
      legend.margin=margin(grid::unit(0,"cm")),
      legend.text=element_text(size=rel(.7)),
      legend.key.height=grid::unit(0.25,"cm"),
      legend.key.width=grid::unit(1.5,"cm")
    )
}

#' Bottom Legend Theme
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' library(ggplot2)
#' # Dummy data
#' x <- LETTERS[1:20]
#' y <- paste0("var", seq(1,20))
#' data <- expand.grid(X=x, Y=y)
#' data$Z <- runif(400, 0, 5)
#' # Heatmap
#' ggplot(data, aes(X, Y, fill= Z)) +
#'   geom_tile()+
#'   theme_map()
bottom_legend = function(){
  theme(
    legend.position="bottom",
    legend.direction="horizontal",
    legend.title=element_text(size=rel(.8),vjust = 1,face = "bold"),
    legend.text=element_text(size=rel(.7)),
    legend.key.height=grid::unit(0.25,"cm"),
    legend.key.width=grid::unit(1.5,"cm"),
    legend.box.background = element_blank()
  )
}

#' Set ggplot default theme and palette
#'
#' @param base_size base font size, given in pts.
#'
#' @return set theme and color to all ggplot figures
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' set_color_theme()
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))
#'   }
set_color_theme <- function(base_size = 12) {
  # continuous_color = c(lighten(MPIBlue,0.6),MPIBlue,MPIYellow,MPIRed,darken(MPIRed,0.4),darken(MPIRed,0.8))
  continuous_color = c("#B5E6FF", "#40BDE8", "#FFCE09", "#E90649",  "#900129", "#41000C")
  ggplot2::theme_set(RTLNotes::theme_scientific(base_size=base_size))
  assign("scale_colour_discrete", function(..., values = RTLNotes::palette_colors$HTML) scale_colour_manual(..., values = values), globalenv())
  assign("scale_fill_discrete", function(..., values = RTLNotes::palette_colors$HTML) scale_fill_manual(..., values = values), globalenv())
  assign("scale_fill_continuous", function(..., values = continuous_color) scale_fill_gradientn(..., colours = values), globalenv())
  assign("scale_colour_continuous", function(..., values = continuous_color) scale_colour_gradientn(..., colours = values), globalenv())
  update_geom_defaults("point",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("line",   list(colour = RTLNotes::palette_colors$HTML[1]))
  # update_stat_defaults("jitter",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("bar",   list(fill = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("bar",   list(colour = "transparent"))
  update_geom_defaults("col",   list(fill = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("col",   list(colour = "transparent"))
  # update_geom_defaults("histogram",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("area",   list(colour = RTLNotes::palette_colors$HTML[1],fill = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("boxplot",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("density",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("smooth",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("quantile",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("path",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("polygon",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("rect",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("step",   list(colour = RTLNotes::palette_colors$HTML[1]))
  update_geom_defaults("rug",   list(colour = RTLNotes::palette_colors$HTML[1]))

}



