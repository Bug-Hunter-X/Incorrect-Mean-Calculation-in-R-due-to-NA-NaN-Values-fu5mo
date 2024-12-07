```R
# This function attempts to calculate the mean of a vector, but it contains a subtle error.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vectors
  } else {
    return(sum(x) / length(x))
  }
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(paste("Mean:", mean_result)) 

# Problem: The function works correctly for most vectors. But if the vector contains non-numeric values such as NA or NaN, the sum() function will not produce the expected numeric results and could lead to unexpected behavior.
my_vector_with_na <- c(1, 2, NA, 4, 5)
mean_result_na <- calculate_mean(my_vector_with_na)
print(paste("Mean with NA:", mean_result_na))
```