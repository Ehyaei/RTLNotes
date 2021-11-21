
<!-- README.md is generated from README.Rmd. Please edit that file -->

<a href={https://github.com/Ehyaei/RTLNotes}><img src="man/figures/RTLNotes.svg" alt="RTLNotes logo" align="right" width="160" style="padding: 0 15px; float: right;"/>

# RTLNotes

[![R build
status](https://github.com/Ehyaei/RTLNotes/workflows/R-CMD-check/badge.svg)](https://github.com/Ehyaei/RTLNotes/actions)
[![](https://img.shields.io/badge/devel%20version-0.1-orange.svg)](https://github.com/Ehyaei/RTLNotes)
[![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![](https://img.shields.io/github/last-commit/Ehyaei/RTLNotes.svg)](https://github.com/Ehyaei/RTLNotes/commits/main)

RMarkdown enables you to write reproducible academic publications such
as articles, PhD thesis, lab reports, posters, presentations, and a
variety of other fascinating documents using the lightweight and
plain-text Markdown syntax. There are several packages for RMarkdown
themes, but all of them are useful for left-to-right languages. RTLNotes
package tries to create a right-to-left languages theme for RMarkdown.

> RTLNotes is not only for R users!. Python programmers can also run
> codes in Rmarkdown. This
> [article](https://ehyaei.github.io/MPIThemes/articles/articles/21_python_rmarkdown.html)
> has additional information.

When running your Rmd files with knitr, output plots, tables and code
results are embedded in the md file. Then, Rstudio by using pandoc’s
powerful engine can convert your documents to many formats, such as PDF,
Docx, HTML, epub, and… In particular, you can create PDF reports without
worrying about the lateX code.

<p align="center">
<img src="man/figures/TheLordofDocuments.svg" width="100%"/>
</p>

# Features

The `RTLNotes` package contains report and presentation templates in PDF
and Gitbook formats. In the articles section, you’ll find an
introduction to each template as well as instructions on how to config
it. The templates that have been implemented so far are as follows:

-   [PDF Report
    (LaTeX)](https://ehyaei.github.io/RTLNotes/articles/articles/01_pdf_report_template_customization.html)
-   [Short PDF note
    (LaTeX)](https://ehyaei.github.io/RTLNotes/articles/articles/02_short_pdf_report.html)
-   [Long Document
    (Gitbook/Bookdown)](https://ehyaei.github.io/RTLNotes/articles/articles/03_bookdown_document.html)
-   [Beamer Presentation
    (LaTeX)](https://ehyaei.github.io/RTLNotes/articles/articles/04_pdf_presentation.html)

## Installation

`RTLNotes` is not (yet) available on CRAN, so install development
version from GitHub via the `devtools` or `remotes` packages.

:stop_sign: :construction: Before installing the package, you should
check that you have X11 plotting device, Parastoo, Vazir and Vazir-Code
fonts on your machine. The fonts source can be found
[here](https://github.com/Ehyaei/RTLNotes/tree/master/inst/rmarkdown/templates/latex_report/skeleton/src/fonts).
For more details on package dependencies, see [Get
Started](https://ehyaei.github.io/RTLNotes/articles/articles/RTLNotes.html).

``` r
# install.packages("remotes")
remotes::install_github("Ehyaei/RTLNotes")
```

## Attribution

The RMarkdown packages and latex resources that inspired this effort
include:

-   Ahmad Ehyaei’s [MPIThemes](https://ehyaei.github.io/MPIThemes/)
-   Saber Rastikerdar’s [fonts](https://rastikerdar.github.io/)
