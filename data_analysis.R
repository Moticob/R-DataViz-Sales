# data_analysis.R

# Chargement des packages nécessaires
library(dplyr)

# Fonction pour obtenir des statistiques descriptives
summary_statistics <- function(data) {
  summary <- data %>%
    summarise(
      total_sales = sum(Sales),
      average_sales = mean(Sales),
      sales_sd = sd(Sales),
      min_sales = min(Sales),
      max_sales = max(Sales)
    )
  return(summary)
}
