# data_modeling.R

# Chargement des packages nécessaires
library(forecast)

# Fonction pour modéliser les ventes
fit_model <- function(data) {
  ts_data <- ts(data$Sales, frequency = 12)
  model <- auto.arima(ts_data)
  return(model)
}
