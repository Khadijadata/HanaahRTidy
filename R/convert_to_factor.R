#' Convert column to factor
#'
#' This function converts a column with textual values into a factor variable, which is useful for categorical data analyses.
#'
#' @param data A data frame containing the column to be converted.
#' @param column The name of the column to convert (as a string).
#' @return A data frame with the specified column converted to a factor.
#' @examples
#' data <- data.frame(gender = c("male", "female", "female", "male"))
#' convert_to_factor(data, "gender")
#' @export
convert_to_factor <- function(data, column) {
  if (!is.data.frame(data) || !column %in% names(data)) {
    stop("The input data must be a data frame and the column must exist.")
  }
  data[[column]] <- factor(data[[column]])
  return(data)
}
