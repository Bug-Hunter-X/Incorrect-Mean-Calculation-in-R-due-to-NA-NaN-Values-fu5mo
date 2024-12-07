```R
#Corrected function to handle NA/NaN values
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  } else {
    x <- na.omit(x) # Remove NA values
    if (length(x) == 0) {
      return(NA) # Handle vectors with only NA values
    } else {
      return(sum(x) / length(x))
    }
  }
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean_corrected(my_vector)
print(paste("Mean:", mean_result))

my_vector_with_na <- c(1, 2, NA, 4, 5)
mean_result_na <- calculate_mean_corrected(my_vector_with_na)
print(paste("Mean with NA:", mean_result_na))

my_vector_with_nan <- c(1, 2, NaN, 4, 5)
mean_result_nan <- calculate_mean_corrected(my_vector_with_nan)
print(paste("Mean with NaN:", mean_result_nan))

my_vector_all_na <- c(NA, NA, NA)
mean_result_all_na <- calculate_mean_corrected(my_vector_all_na)
print(paste("Mean with all NAs:", mean_result_all_na))
```