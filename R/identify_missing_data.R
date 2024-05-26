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
  missing_summary <- data.frame(
    Column = colnames(data),
    MissingCount = sapply(data, function(x) sum(is.na(x))),
    MissingPercentage = sapply(data, function(x) mean(is.na(x))) * 100
  )
  return(missing_summary)
}
