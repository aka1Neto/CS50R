#' Automatic data pre-processing
#'
#' This function performs data pre-processing, with options to remove missing values, scale numeric columns, and create dummy variables.
#'
#' @param data A data frame to be pre-processed.
#' @param target (Optional) The name of the target variable to exclude from pre-processing.
#' @param scale (Optional) A boolean indicating if numeric columns should be scaled (default: TRUE).
#' @param remove_na (Optional) A boolean indicating if rows with missing values should be removed (default: TRUE).
#' @param create_features (Optional) A boolean indicating if dummy variables should be created for factors (default: FALSE).
#'
#' @return A pre-processed data frame.
#' @examples
#' data(mtcars)
#' result <- auto_prep(mtcars, target = "mpg")
#' @export

auto_prep <- function(data, target = NULL, scale = TRUE, remove_na = TRUE, create_features = FALSE) {

  if (remove_na) {
    data <- na.omit(data)
  }

  if (scale) {
    numeric_cols <- sapply(data, is.numeric)
    data[numeric_cols] <- scale(data[numeric_cols])
  }

  if (!is.null(target) && target %in% names(data)) {
    target_col <- data[[target]]
    data <- data[, !names(data) %in% target]
  } else {
    target_col <- NULL
  }

  if (create_features) {
    data <- model.matrix(~. - 1, data = data) |>
      as.data.frame()
  }

  if (!is.null(target_col)) {
    data[[target]] <- target_col
  }

  return(data)
}
