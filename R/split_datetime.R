#' Split DateTime Column
#'
#' This function splits a datetime column into separate date and time columns.
#'
#' @param datetime_column A column containing datetime values.
#' @return A data frame with separate date and time columns.
#' @examples
#' # Example usage:
#' # datetime_values <- as.POSIXct(c("2023-01-01 12:34:56", "2023-01-02 23:45:01"))
#' # split_datetime(datetime_values)
#' @export
split_datetime <- function(datetime_column) {
  datetime_df <- data.frame(
    Date = as.Date(datetime_column),
    Time = format(datetime_column, format = "%H:%M:%S")
  )
  return(datetime_df)
}
