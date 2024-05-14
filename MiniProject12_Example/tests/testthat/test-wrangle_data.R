library(testthat)

test_that("wrangle_data() output is correct", {
  adsl_data <- wrangle_data(adsl_data)
  
  expect_success(expect_equal(unique(adsl_data$SAFFL), "Y"))
  expect_success(expect_equal(sum(is.na(adsl_data$SAFFL)), 0))
  expect_success(expect_length(names(adsl_data), 6))
  expect_failure(expect_equal(unique(adsl_data$SAFFL), "N"))
})

test_that("expected columns are all present in the wrangle_data() output", {
  expect_equal(sum(expected_vars %in% names(adsl_data)), 3)
})