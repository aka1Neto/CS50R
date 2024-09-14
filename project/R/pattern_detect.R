#' Detect correlation patterns and duplicate rows in the data
#'
#' This function identifies high correlations between numeric variables and detects duplicated rows in the data.
#'
#' @param data A data frame to analyze.
#'
#' @return A list containing high correlations and duplicated rows.
#' @examples
#' data(mtcars)
#' result <- pattern_detect(mtcars)
#' @export

pattern_detect <- function(data) {

  if (!requireNamespace("corrr", quietly = TRUE)) {
    stop("Package 'corrr' is required but not installed.")
  }
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package 'dplyr' is required but not installed.")
  }

  suppressMessages(library(corrr))
  suppressMessages(library(dplyr))

  library(corrr)
  library(dplyr)

  numeric_data <- select_if(data, is.numeric)

  correlations <- correlate(numeric_data, quiet = TRUE) |>
    stretch() |>
    filter(abs(r) > 0.7 & x != y)

  duplicated_data <- data[duplicated(data), ]

  result <- list(
    HighCorrelations = correlations,
    DuplicatedRows = duplicated_data,
    DuplicatedCount = nrow(duplicated_data)
  )

  return(result)
}
