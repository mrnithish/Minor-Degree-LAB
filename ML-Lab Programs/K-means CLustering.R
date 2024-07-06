# Sample data (replace with your actual data)
data <- data.frame(
  feature1 = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  feature2 = c(5, 4, 7, 8, 2, 1, 3, 6, 9, 10)
)

# Define the number of clusters (k)
k <- 3

# Perform K-means clustering
kmeans_results <- kmeans(data, centers = k, nstart = 20)

# Print cluster assignments
print("Cluster assignments:")
print(kmeans_results$cluster)

# Install packages if not already installed (optional)
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)  # Load the required library

# Visualize clusters
ggplot(data, aes(x = feature1, y = feature2, color = kmeans_results$cluster)) +
  geom_point() +
  labs(title = "K-means Clustering Results", x = "Feature 1", y = "Feature 2")
