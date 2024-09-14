load("air.RData")

air <- air |>
  filter(str_ends(county, "Curry"))

save(air, file="3.RData")