library(testthat)

test_that("pattern_detect identifies high correlations correctly", {
  data(mtcars)

  result <- pattern_detect(mtcars)

  expect_true("HighCorrelations" %in% names(result))
  expect_true(is.data.frame(result$HighCorrelations))
})

test_that("pattern_detect identifies duplicated rows correctly", {
  duplicated_data <- rbind(mtcars, mtcars[1:5, ])

  result <- pattern_detect(duplicated_data)

  expect_true(nrow(result$DuplicatedRows) == 5)
  expect_equal(result$DuplicatedCount, 5)
})
