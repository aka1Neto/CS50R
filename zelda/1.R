zelda <- read.csv("zelda.csv")

zelda <- pivot_wider(
  zelda,
  id_cols = c(title, release),
  names_from = role,
  values_from = names
)

zelda <- zelda |>
  separate(release, into = c("year","system"), sep = " - ")

names(zelda) <- str_to_lower(names(zelda))

zelda$year <- as.numeric(zelda$year)

save(zelda, file="zelda.RData")
