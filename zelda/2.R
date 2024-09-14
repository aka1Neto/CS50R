load("zelda.RData")

zelda <- zelda |>
  group_by(year) |>
  select(year) |>
  summarize(releases = n()) |>
  arrange(desc(releases))

zelda

save(zelda, file = "2.RData")
