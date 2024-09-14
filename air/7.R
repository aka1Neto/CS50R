load("air.RData")

air <- air |>
  group_by(level_1, pollutant) |>
  select(source = level_1, pollutant, emissions) |>
  summarize(emissions = sum(emissions)) |>
  arrange(source, pollutant)

save(air, file="7.RData")
