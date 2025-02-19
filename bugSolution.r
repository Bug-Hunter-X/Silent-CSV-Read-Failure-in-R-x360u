```r
# Improved error handling when reading a CSV file
file_path <- "my_file.csv"
data <- tryCatch({
  read.csv(file_path)
}, error = function(e) {
  # Provide specific details about the error
  message(paste("Error reading file", file_path, ":", e$message))
  return(NULL) # Or throw an error: stop(e$message)
})

if (is.null(data)) {
  # Handle the case where the file couldn't be read
  stop("Failed to read CSV file.")
} else {
  # Proceed with data analysis
  print(head(data))
}
```