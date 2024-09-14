calculate_growth_rate <- function(years, visitors) {
  last_idx <- which(years == max(years))
  first_idx <- which(years == min(years))
  result <- (visitors[last_idx] - visitors[first_idx]) / (years[last_idx] - years[first_idx])
  return(result)
}

predict_visitors <- function(years, visitors, year) {
  last_idx <- which(years == max(years))
  num <- year - max(years)
  growth <- calculate_growth_rate(years, visitors)
  result <- visitors[last_idx] + (num * growth)

}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
