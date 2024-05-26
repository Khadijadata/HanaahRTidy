split_datetime <- function(datetime_column) {
  date <- as.Date(datetime_column)
  time <- format(datetime_column, "%H:%M:%S")
  return(data.frame(Date = date, Time = time))
}
