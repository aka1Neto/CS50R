years <- c(2020, 2021, 2022, 2023, 2024)

data <- data.frame()

add_col <- function(year){
  file <- read.csv(paste0(year, ".csv"))
  scores <- round(rowSums(file[, -1]), 2)
  file$score <- scores
  file$year <- year
  data <<- rbind(data, file)

}


for (i in years){
  add_col(i)
}


print("Country: ")
country <- readline()

for (i in years){
  test <- data[data$year == i, ]

  if (country %in% unique(test$country)){
    print(paste0(country , '(', i, '): ', test$score[test$country == country]))

  } else{
    print(paste0(country , '(', i, '): data not unavailable'))
  }
}






