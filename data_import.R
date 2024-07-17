# data_import.R

# Chargement des packages nécessaires
library(readr)
library(dplyr)

# Fonction pour importer les données
import_data <- function(file_path) {
  data <- read_csv(file_path)
  return(data)
}

# Fonction pour nettoyer les données
clean_data <- function(data) {
  data <- data %>%
    filter(!is.na(Sales)) %>%
    mutate(Date = as.Date(Date, format = "%Y-%m-%d"))
  return(data)
}
