library(testthat)

test_that("calculate_Big_N_cnt() output has expected dim, columns, and types", {
  expect_named(test_Big_N_cnt, c("TRT01AN", "TRT01A", "N"))
  expect_equal(dim(test_Big_N_cnt), c(length(unique(test_Big_N_cnt$TRT01A)), 3))
  expect_type(test_Big_N_cnt$N, "integer")
})

test_that("calculate_Big_N_cnt() produces correct calculation", {
  expect_equal(test_Big_N_cnt$N, c(5,3))
})
