library(stringr)
library(testthat)

test_that("str_length() returns correct string lengths for typical cases", {
  expect_equal(str_length("Hello, world!"), 13)
  expect_equal(str_length(""), 0)
  expect_equal(str_length("   "), 3)
  expect_equal(str_length("@#$%^&*"), 7)
})

test_that("str_length() handles NA values correctly", {
  expect_true(is.na(str_length(NA)))
})

test_that("str_length() returns correct lengths for non-alphabetical characters", {
  expect_equal(str_length("😊"), 1)
  expect_equal(str_length("\t\n\r"), 3)
  expect_equal(str_length("1 2 3"), 5)
})

test_that("str_length() handles vector inputs", {
  expect_equal(str_length(c("a", "abc", "defg")), c(1, 3, 4))
  expect_equal(str_length(c("Hello", "", NA)), c(5, 0, NA))
})

