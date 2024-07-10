# Required Libraries
library(ggplot2)
library(dplyr)

# Generate Fake Data
set.seed(123)
n <- 100  # Number of observations
data <- data.frame(
  Age = round(runif(n, 18, 70), 0),
  Income = round(runif(n, 20000, 100000), 0),
  LoanAmount = round(runif(n, 1000, 50000), 0),
  CreditRisk = sample(c(0, 1), n, replace = TRUE)  # 0: Low Risk, 1: High Risk
)

# View the first few rows of the data
head(data)

# Regression Model
model <- glm(CreditRisk ~ Age + Income + LoanAmount, data = data, family = binomial)

# Summary of the model
summary(model)

# Predicting probabilities
data$PredictedRisk <- predict(model, type = "response")

# View the first few rows with predictions
head(data)

# Plotting the results
ggplot(data, aes(x = Age, y = PredictedRisk, color = as.factor(CreditRisk))) +
  geom_point() +
  labs(title = "Credit Risk Prediction",
       x = "Age",
       y = "Predicted Risk") +
  theme_minimal()
