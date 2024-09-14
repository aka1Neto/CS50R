library(ggplot2)

data(iris)

visualization <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Comparison of Petal Dimensions Between Species",
    x = "Petal Length (cm)",
    y = "Petal Width (cm)",
    color = "Species"
  ) +
  theme_minimal()

ggsave(
  "visualization.png",
  plot = visualization,
  width = 2000,
  height = 900,
  units = "px"
)

