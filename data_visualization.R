# data_visualization.R

# Chargement des packages nécessaires
library(ggplot2)

# Fonction pour visualiser les ventes mensuelles
plot_sales <- function(data) {
  ggplot(data, aes(x = Date, y = Sales)) +
    geom_line() +
    labs(title = "Ventes mensuelles", x = "Date", y = "Ventes") +
    theme_minimal()
}
