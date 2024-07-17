# main.R

# Chargement des scripts nécessaires
source("data_import.R")
source("data_analysis.R")
source("data_visualization.R")
source("data_modeling.R")
source("model_evaluation.R")
source("utils.R")

# Chemin du fichier de données
file_path <- "path/to/sales_data.csv"

# Importation et nettoyage des données
print_message("Importation des données...")
data <- import_data(file_path)
cleaned_data <- clean_data(data)
print_message("Données importées et nettoyées.")

# Analyse descriptive
print_message("Analyse descriptive...")
summary <- summary_statistics(cleaned_data)
print(summary)

# Visualisation des données
print_message("Visualisation des données...")
plot_sales(cleaned_data)

# Modélisation des données
print_message("Modélisation des données...")
model <- fit_model(cleaned_data)

# Évaluation du modèle
print_message("Évaluation du modèle...")
accuracy <- evaluate_model(model, cleaned_data)
print(accuracy)
