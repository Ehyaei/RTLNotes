#' PDF Report Latex Template
#'
#' latex_report function includes many features to customize your latex template
#' and produce pdf report output.
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex A Boolean toggle to select whether intermediate. Default value is TRUE
#' @param highlight Syntax highlighting style. Default value is "tango".
#' @param latex_engine LateX engine for producing PDF output. Default value is xelatex
#' @param fig_caption TRUE to render figures with captions.
#' @return R Markdown output format.
#' @export
#'
latex_report <- function(..., keep_tex = TRUE, highlight = "tango",
                         latex_engine= "xelatex", fig_caption = TRUE) {
  template <- system.file("rmarkdown", "templates", "latex_report", "resources",
                           package = "MPIThemes")
  template = paste0(template,"/template.tex")
  base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex,
                               highlight = highlight,latex_engine = latex_engine,
                               fig_caption = fig_caption
                               )

  base$knitr$opts_chunk$prompt <- FALSE
  base$knitr$opts_chunk$comment <- ''
  base$knitr$opts_chunk$highlight <- TRUE
  base$knitr$opts_chunk$echo <- FALSE
  base$knitr$opts_chunk$message <- F
  base$knitr$opts_chunk$error <- FALSE
  base$knitr$opts_chunk$screenshot.opts <- list(delay=1)
  base$knitr$opts_chunk$warning <- FALSE
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$dev <- "cairo_pdf"
  base$knitr$opts_chunk$fig.pos <- "H"
  base$knitr$opts_chunk$fig.path="figure/"
  base$knitr$opts_chunk$dev.args=list(bg="transparent")
  base
}


#' PDF Presentation Latex Template
#'
#' latex_presentation function includes many features to customize your beamer
#' latex presentation template
#' and produce pdf output.
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex A Boolean toggle to select whether intermediate. Default value is TRUE
#' @param highlight Syntax highlighting style. Default value is "tango".
#' @param latex_engine LateX engine for producing PDF output. Default value is xelatex
#' @param fig_caption TRUE to render figures with captions.
#' @return R Markdown output format.
#' @export
#'
latex_presentation <- function(..., keep_tex = TRUE, highlight = "tango",
                         latex_engine= "xelatex", fig_caption = TRUE, slide_level = 2) {
  template <- system.file("rmarkdown", "templates", "beamer_presentation", "resources",
                          package = "MPIThemes")
  template = paste0(template,"/template.tex")
  base <- inherit_pdf_presentation(..., template = template, keep_tex = keep_tex,
                               highlight = highlight,latex_engine = latex_engine,
                               fig_caption = fig_caption,slide_level = slide_level
  )

  base$knitr$opts_chunk$prompt <- FALSE
  base$knitr$opts_chunk$comment <- ''
  base$knitr$opts_chunk$highlight <- TRUE
  base$knitr$opts_chunk$echo <- FALSE
  base$knitr$opts_chunk$message <- F
  base$knitr$opts_chunk$error <- FALSE
  base$knitr$opts_chunk$screenshot.opts <- list(delay=1)
  base$knitr$opts_chunk$fig.width=5
  base$knitr$opts_chunk$fig.height=3.5
  base$knitr$opts_chunk$warning <- FALSE
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$dev <- "cairo_pdf"
  base$knitr$opts_chunk$fig.pos <- "H"
  base$knitr$opts_chunk$fig.path="figure/"
  base$knitr$opts_chunk$dev.args=list(bg="transparent")
  base
}

