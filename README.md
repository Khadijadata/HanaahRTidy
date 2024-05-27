---
output: github_document
---

# HanaahRTidy

<!-- badges: start -->
<!-- badges: end -->

The goal of HanaahRTidy is to provide a suite of tools that simplify and enhance data manipulation and visualization in R. This package is designed to streamline data cleaning processes and offer intuitive functions for tidy data operations, making it easier for users to prepare their data for analysis.

## Installation

You can install the development version of HanaahRTidy from
[GitHub](https://github.com/) with:

```{r}
# install.packages("devtools")
devtools::install_github("Khadijadata/HanaahRTidy")
```

## Functions

The package currently includes the following 4 functions:

split_datetime() Description: This function splits a datetime column into separate columns for date and time. Usage: split_datetime(datetime_column) Returns: A data frame with additional columns for date and time.

convert_to_factor() Description: This function converts a column with textual values into a factor variable, which is useful for categorical data analyses. Usage: convert_to_factor(text_column) Returns: A factor variable.

import_data() Description: This function imports data from a specified file format (such as CSV, Excel, or others) and converts it into a format suitable for analysis. Usage: import_data(file) Returns: A tibble containing the imported data, ready for analysis.

identify_missing_data() Description: This function summarizes the missing data in each column of a data frame, providing the count and percentage of missing values. Usage: identify_missing_data(data) Returns: A data frame with columns for each column name, the count of missing values, and the percentage of missing values.

### Convert Column to Factor()

This function converts a column with textual values into a factor variable, which is useful for categorical data analyses.

#### Usage

```{r}
library(HanaahRTidy)
convert_to_factor(data, column)
```

#### Arguments

- `data`: A data frame containing the column to be converted.
- `column`: The name of the column to convert (as a string).

#### Value

A data frame with the specified column converted to a factor.

#### Examples

```{r}
data <- data.frame(gender = c("male", "female", "female", "male"))
convert_to_factor(data, "gender")
```

### Identify Missing Data()

This function flags missing values in a dataset and provides summary statistics on the percentage of missingness for each column.

#### Usage

```{r}
identify_missing_data(airquality)
```

#### Arguments

- `data`: A data frame containing the dataset.

#### Value

A data frame summarizing the missing data statistics.

#### Examples

```{r}
# Example usage:
# missing_data_summary <- identify_missing_data(airway_data)
# print(missing_data_summary)
```

### Import Data from Excel()

This function imports data from an Excel file and converts it into a format suitable for analysis.

#### Usage

```{r}
import_data(file_path, sheet = 1)
```

#### Arguments

- `file_path`: The path to the Excel file.
- `sheet`: The name or index of the sheet to read.

#### Value

A data frame containing the imported data.

#### Examples

```{r}
\dontrun{
  # Example 1: Import data from the first sheet of an Excel file
  data <- import_data("path/to/file.xlsx")

  # Example 2: Import data from a specific sheet by name
  data <- import_data("path/to/file.xlsx", sheet = "Sheet1")

  # Example 3: Import data from a specific sheet by index
  data <- import_data("path/to/file.xlsx", sheet = 2)
}
```

### Split Datetime Column into Separate Date and Time Columns

This function takes a datetime column and splits it into separate date and time columns.

#### Usage

```{r}
split_datetime(datetime_column)
```

#### Arguments

- `datetime_column`: A column of datetime values.

#### Value

A data frame with separate date and time columns.

#### Examples

```{r}
datetime_example <- as.POSIXct(c("2020-01-01 12:00:00", "2020-01-02 13:30:00"))
split_datetime(datetime_example)
```
