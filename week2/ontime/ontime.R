rail <- read.csv('rail.csv')
bus <- read.csv('bus.csv')

data <- rbind(rail, bus)

print("Route: ")
routes <- readline()

if (routes %in% data$route){
  route <- subset(data, data$route == routes)

  on <- route$peak =='PEAK'
  off <- route$peak =='OFF_PEAK'

  on_reliability <- round(mean(route$numerator[on] / route$denominator[on]) * 100)
  off_reliability <- round(mean(route$numerator[off] / route$denominator[off]) * 100)

  print(paste0("On time ", on_reliability, "% of the time during peak hours."))
  print(paste0("On time ", off_reliability, "% of the time during off-peak hours."))

} else {
  print("Not valid route")
}