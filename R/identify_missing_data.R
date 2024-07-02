#' Identify Missing Data
#'
#' This function flags missing values in a dataset and provides summary statistics on the percentage of missingness for each column.
#'
#' @param data A data frame containing the dataset.
#'
#' @return A data frame summarizing the missing data statistics.
#' @examples
#' # Example usage:
#' # missing_data_summary <- identify_missing_data(airway_data)
#' # print(missing_data_summary)
#' @export
identify_missing_data <- function(data) {
  missing_counts <- colSums(is.na(data))
  missing_percentages <- colMeans(is.na(data)) * 100
  missing_summary <- data.frame(
    Column = names(missing_counts),
    MissingCount = missing_counts,
    MissingPercentage = missing_percentages
  )
  return(missing_summary)
}
