library(tidyverse)
library(haven)
library(testthat)

# Create wrangle_data function
wrangle_data <- function(data) {
  adsl_data <- data %>%
    filter(SAFFL == "Y") %>% 
    select("STUDYID", "USUBJID", "SEX", "TRT01A", "TRT01AN", "SAFFL")
  return(adsl_data)
}

calculate_Big_N_cnt <- function(adsl_data) {
  Big_N_cnt <-  adsl_data   %>%
    group_by( TRT01AN, TRT01A ) %>%
    count(name = "N")
  return(Big_N_cnt)
}

calculate_small_n_cnt <- function(adsl_data) {
  small_n_cnt <-  adsl_data  %>%
    group_by( TRT01AN, TRT01A,  SEX ) %>%
    count(name = "n")
  return(small_n_cnt)
} 

