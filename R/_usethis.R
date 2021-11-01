# This code is making package structures with usethis package.
# check name
available::available("RTLNonte") # check whether package names is available and valid

# initial setup
usethis::create_package("~/RTLNonte") # make package skeleton

# connect to git
usethis::create_github_token()# if you have not token, create it.
usethis::edit_r_environ() # add token to environment by add this line GITHUB_PAT=[your token]
usethis::use_git() # add version control
usethis::use_github() # add github repository

#  Add  License
usethis::use_gpl3_license()

# Add README
usethis::use_readme_rmd() # Add a README.Rmd
devtools::build_readme() # Render README.RMD to generate README.md

# add dependency
usethis::use_package("rmarkdown")
usethis::use_package("bookdown")
usethis::use_package("pagedown")
usethis::use_package("ggplot2")
usethis::use_package("gridExtra")
usethis::use_package("scales")

# create r scripts
usethis::use_r("_usethis")
usethis::use_r("_render.r")
usethis::use_r("utils")
usethis::use_r("data")
usethis::use_r("themes")
usethis::use_r("scales")
usethis::use_r("latex_templates")
usethis::use_r("html_templates")
usethis::use_r("office_templates")
usethis::use_r("bookdown_templates")

# hide script that deploys from package
usethis::use_build_ignore(c("R/_render.r", "R/_usethis.R"))

# add roxygen2 to convert markdown to Rd files
usethis::use_roxygen_md()

# add continuous integration to
# github_actions {usethis}	R Documentation:
#   - Run R CMD check on various operating systems and R versions
#   - Build and deploy a pkgdown site
#   - Determine test coverage

use_github_actions()

# add package-level documentation
usethis::use_package_doc()

# setup package documentation as website
usethis::use_pkgdown()
usethis::use_article("RTLNonte")

pkgdown::build_site()


# setup spell checking
usethis::use_spell_check()
devtools::check()

library(rcmdcheck)
rcmdcheck("../RTLNonte_0.0.0.9000.tar.gz")

## Add color data

palette_colors = data.frame(
  color = c(
    "red",
    "green",
    "lightBlue",
    "orange",
    "yellow",
    "pink",
    "blue",
    "lightGreen",
    "gray"),
  HTML = c(
    "#E90649",
    "#116656",
    "#40BDE8",
    "#FF7300",
    "#FFCE09",
    "#FA9FCC",
    "#0067C6",
    "#62BD19",
    "#CDC9C4")
)

usethis::use_data(palette_colors,overwrite = T)

