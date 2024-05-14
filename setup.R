# To install {renv}
# install.packages("renv", repos = 'https://packagemanager.posit.co/cran/2024-03-01')
# renv::activate()

#list of required packages
packages <- c("tidyverse",
              "rio",
              "haven",
              "skimr",
              "htmlTable",
              "rlang",
              "ggdist",
              "cowplot",
              "testthat",
              "gt",
              "readr",
              "usethis",
              "knitr",
              "tinytex",
              "rmarkdown",
              "glue",
              "gghighlight",
              "ggdist",
              "ggridges",
              "patchwork",
              "reprex",
              "dplyr")

#function that checks packages status.
pkg_status <- function(x){
  if (length(setdiff(packages, rownames(installed.packages()))) == 0){
    print("All necessary packages already installed")
  }else{
  install.packages(setdiff(packages, rownames(installed.packages())), 
                   repos='https://packagemanager.posit.co/cran/2024-03-01')  
  }
}

#Install and load packages from CRAN if they don't already installed  
pkg_status()





