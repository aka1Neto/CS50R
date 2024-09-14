library(testthat)
library(ggplot2)

test_that("plot creates a histogram for numeric data", {
  data(mtcars)

  plot_result <- plot(mtcars, "mpg")

  expect_true(is.ggplot(plot_result))
  expect_true("GeomBar" %in% class(plot_result$layers[[1]]$geom))
})

test_that("plot creates a bar plot for categorical data", {
  data(iris)

  iris$Species <- as.character(iris$Species)
  plot_result <- plot(iris, "Species")

  expect_true(is.ggplot(plot_result))
  expect_true("GeomBar" %in% class(plot_result$layers[[1]]$geom))
})

test_that("plot creates a scatter plot for two numeric variables", {
  data(mtcars)

  plot_result <- plot(mtcars, "mpg", "hp")

  expect_true(is.ggplot(plot_result))
  expect_true("GeomPoint" %in% class(plot_result$layers[[1]]$geom))
})

test_that("plot creates a bar plot with fill for categorical and numeric variables", {
  data(iris)

  iris$Species <- as.character(iris$Species)
  plot_result <- plot(iris, "Species", "Sepal.Length")

  expect_true(is.ggplot(plot_result))
  expect_true("GeomBar" %in% class(plot_result$layers[[1]]$geom))
})