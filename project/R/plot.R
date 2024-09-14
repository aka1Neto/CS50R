#' Automatically creates plots based on the provided data
#'
#' This function creates histograms, bar plots, or scatter plots depending on the provided variables.
#'
#' @param data A data frame to plot.
#' @param x The name of the variable on the x-axis.
#' @param y (Optional) The name of the variable on the y-axis.
#'
#' @return A ggplot2 object with the created plot.
#' @examples
#' data(mtcars)
#' p <- plot(mtcars, "mpg", "hp")
#' print(p)
#' @export

plot <- function(data, x, y = NULL) {
  library(ggplot2)

  if (is.null(y)) {
    if (is.numeric(data[[x]])) {
      p <- ggplot(data, aes(x = x)) +
        geom_histogram(binwidth = 1, fill = "blue", color = "black") +
        ggtitle(paste("Histogram of", x)) +
        theme_minimal()

    }else {
      p <- ggplot(data, aes(x = x)) +
        geom_bar(stat = "count", fill = "blue", color = "black") +
        ggtitle(paste("Bar plot of", x)) +
        theme_minimal()
    }

  }else {
    if (is.numeric(data[[x]]) && is.numeric(data[[y]])) {
      p <- ggplot(data, aes(x = x, y = y)) +
        geom_point(color = "blue") +
        ggtitle(paste("Scatter plot of", x, "vs", y)) +
        theme_minimal()

    }else {
      p <- ggplot(data, aes(x = x, fill = y)) +
        geom_bar(position = "dodge") +
        ggtitle(paste("Bar plot of", x, "by", y)) +
        theme_minimal()
    }
  }

  return(p)
}
