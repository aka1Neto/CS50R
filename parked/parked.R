library(readr)
library(stringr)
library(dplyr)
library(ggplot2)

lyric <- read_file("lyrics/chapman.txt")

lyric <- lyric |>
  str_to_lower() |>
  str_remove_all('[,.?"]') |>
  str_split("\\s+")

words <- unlist(lyric)
df <- data.frame(word = words)

df <- df |>
  group_by(word) |>
  summarize(count = n()) |>
  filter(count > 3)

lyric <- ggplot(df, aes(x = word, y = count)) +
  geom_col(
    aes(fill = word),
    show.legend = FALSE) +
  labs(
    x = "Word",
    y = "Count",
    title ="Song's Words"
  ) +
  theme_classic()


ggsave(
  "lyrics.png",
  plot = lyric,
  width = 2500,
  height = 900,
  units = "px"
)
