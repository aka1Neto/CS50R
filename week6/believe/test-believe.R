library(testthat)

source("believe.R")

test_that("mode() returns the correct mode for numeric vectors", {
  expect_equal(mode(c(1, 2, 2, 3, 4)), 2)
  expect_equal(mode(c(1, 1, 2, 3, 3, 4)), c(1, 3))
  expect_equal(mode(c(10, 20, 20, 10, 10)), 10)
})

test_that("mode() returns the correct mode for character vectors", {
  expect_equal(mode(c("apple", "banana", "apple", "orange")), "apple")
  expect_equal(mode(c("cat", "dog", "dog", "cat")), c("cat", "dog"))
  expect_equal(mode(c("red", "blue", "green", "blue", "red")), c("blue", "red"))
})

test_that("mode() handles empty vectors correctly", {
  expect_true(is.na(mode(c())))
})

test_that("mode() handles single-element vectors correctly", {
  expect_equal(mode(c(5)), 5)
  expect_equal(mode(c("only")), "only")
})

test_that("mode() handles vectors with all unique elements", {
  expect_equal(mode(c(1, 2, 3, 4, 5)), c(1, 2, 3, 4, 5))
  expect_equal(mode(c("a", "b", "c", "d")), c("a", "b", "c", "d"))
})

