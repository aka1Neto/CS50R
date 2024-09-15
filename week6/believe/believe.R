mode <- function(x) {
  if (length(x) == 0) {
    return(NA)
  }

  freq_table <- table(x)
  max_freq <- max(freq_table)

  modes <- as.vector(names(freq_table[freq_table == max_freq]))

  if (is.numeric(x)) {
    modes <- as.numeric(modes)
  }

  return(modes)
}
