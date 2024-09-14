load("air.RData")

air <- air |>
  filter(str_ends(county, "Curry")) |>
  arrange(desc(emissions))

save(air, file="4.RData")