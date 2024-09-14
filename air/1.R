air <- read_csv("air.csv")

air <- select(air, !c(names(air)[c(5, 6, 7, 8, 13, 14)]))

names(air) <- c("state", "county", "pollutant", "emissions", "level_1", "level_2", "level_3", "level_4")

save(air, file="air.RData")

