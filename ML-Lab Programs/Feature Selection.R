library(caret)
# Load data (replace with your data loading) 
data <- read.csv("https://raw.githubusercontent.com/zygmuntz/wine-quality/master/winequality/winequality-red.csv") 
# Define target variable 
target_variable <- "target_column" 
# Feature selection with information gain 
control <- ctrl_information2Gain(verbose = FALSE) 
features <- feat_select(control, data[, -target_variable], target_variable) 
# Select top n features (adjust n as needed) 
selected_features <- features$Features[1:n] 
# Create new data with selected features 
reduced_data <- data[, selected_features, drop = FALSE] 

library(stats) 
# Load data (replace with your data loading) 
data <- read.csv("https://raw.githubusercontent.com/zygmuntz/wine-quality/master/winequality/winequality-red.csv") 
# Centering data (optional) 
# centered_data <- data - colMeans(data) 
# Perform PCA 
pca_results <- princomp(data) 
# Determine number of PCs (based on explained variance) 
explained_variance <- pca_results$eigen$values / sum(pca_results$eigen$values) 
# Choose number of PCs based on a threshold or scree plot analysis 
# Project data to lower dimension 
reduced_data <- pca_results$scores[, 1:n_pcs]  # Select top n PCs 