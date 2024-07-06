# Sample data
data <- data.frame(
  feature1 = c(10, 20, 30, 5, 45),
  feature2 = c(100, 120, 110, 80, 150)
)

# Feature Scaling (Standardization)
scaled_data <- scale(data)
print("Feature Scaling (Standardized):")
print(scaled_data)

# Normalization (Min-Max Scaling)
normalized_data <- data.frame(
  feature1 = (data$feature1 - min(data$feature1)) / (max(data$feature1) - min(data$feature1)),
  feature2 = (data$feature2 - min(data$feature2)) / (max(data$feature2) - min(data$feature2))
)
print("Normalization (Min-Max Scaling):")
print(normalized_data)
