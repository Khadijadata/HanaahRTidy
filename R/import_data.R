#' Import Data
#'
#' This function imports a dataset from a CSV file and returns a data frame.
#'
#' @param file_path A string specifying the path to the CSV file.
#'
#' @return A data frame containing the data from the CSV file.
#' @examples
#' # Example usage:
#' # data <- import_data("path/to/file.csv")
#' # print(data)
#' @export
import_data <- function(file_path) {
  data <- read.csv(file_path)
  return(data)
}
