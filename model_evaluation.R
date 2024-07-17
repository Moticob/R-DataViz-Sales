# model_evaluation.R

# Chargement des packages nécessaires
library(forecast)

# Fonction pour évaluer le modèle
evaluate_model <- function(model, data) {
  ts_data <- ts(data$Sales, frequency = 12)
  forecasted <- forecast(model, h = 12)
  accuracy <- accuracy(forecasted, ts_data)
  return(accuracy)
}
