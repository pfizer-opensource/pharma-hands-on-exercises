# run testthat tests  -------------------------------

source("R/testUtils.R")
source("R/functions.R")

testthat::test_dir("tests/testthat")
