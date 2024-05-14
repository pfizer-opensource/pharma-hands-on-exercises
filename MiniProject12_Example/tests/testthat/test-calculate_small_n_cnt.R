library(testthat)

test_that("expected columns are all present in the small_n_cnt object", {
  expect_named( calculate_small_n_cnt(test_data), c("TRT01AN", "TRT01A", "SEX", "n"))
  expect_equal(dim(calculate_small_n_cnt(test_data)), 
               c(length(unique( calculate_small_n_cnt(test_data)$TRT01A))*2, 4))
})

test_that("calculate_small_n_cnt() produces correct calculation", {
  expect_equal(head(test_small_n_cnt$n, 2), c(2,3))
})

test_that("big n and sammarized small n are identical", {
  expect_identical(aggergate_small_n_cnt$x, test_Big_N_cnt$N)
})  