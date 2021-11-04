inherit_pdf_document <- function(...) {
  fmt <- rmarkdown::pdf_document(...)
  fmt$inherits <- "pdf_document"
  fmt
}


inherit_pdf_presentation <- function(...) {
  fmt <- rmarkdown::beamer_presentation(...)
  fmt$inherits <- "beamer_presentation"
  fmt
}

pretty_number <- function(x) {
  dplyr::case_when(
    x < 1e3 ~ as.character(x),
    x < 1e6 ~ paste0(as.character(x/1e3), "K"),
    x < 1e9 ~ paste0(as.character(x/1e6), "M"),
    x < 1e12 ~ paste0(as.character(x/1e6), "G"),
    x < 1e15 ~ paste0(as.character(x/1e6), "T"),
    x < 1e18 ~ paste0(as.character(x/1e6), "P"),
    TRUE ~ "Infinity..."
  )
}

book_skeleton <- function(path) {
  resources <- system.file("rstudio", "templates", "project", "resources","",
                           package = "RTLNotes", mustWork = TRUE)

  sub_dirs <- list.dirs(resources, recursive = TRUE,  full.names = FALSE)
  sub_dirs <- sub_dirs[-which(sub_dirs == "")]
  sub_dirs <- unique(c(sub_dirs, "data", "scripts"))
  files <- list.files(resources, recursive = TRUE, include.dirs = TRUE)

  new_path <- c(path, file.path(path, sub_dirs))
  fs::dir_create(new_path)

  source <- file.path(resources, files)
  target <- file.path(path, files)
  file.copy(source, target)

  f <- file.path(path, "_bookdown.yml")
  x <- xfun::read_utf8(f)
  xfun::write_utf8(c(sprintf('book_filename: "%s"', basename(path)), x), f)
  TRUE
}
