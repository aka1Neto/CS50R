library(testthat)

test_that("auto_prep performs pre-processing correctly", {
  data(mtcars)

  result <- auto_prep(mtcars, scale = TRUE)
  expect_true(is.data.frame(result))
  expect_equal(ncol(result), ncol(mtcars))

  result_target <- auto_prep(mtcars, target = "mpg", scale = TRUE)
  expect_true(is.data.frame(result_target))
  expect_true("mpg" %in% colnames(result_target))
})

test_that("auto_prep handles missing data correctly", {
  data_with_na <- mtcars
  data_with_na[1:3, "mpg"] <- NA

  result_na <- auto_prep(data_with_na, target = "mpg", remove_na = TRUE)
  expect_false(any(is.na(result_na)))
})
