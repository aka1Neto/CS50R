load("zelda.RData")

zelda <- zelda |>
  group_by(title) |>
  slice_min(order_by = year) |>
  arrange(year, title, system)

save(zelda, file = "3.RData")
