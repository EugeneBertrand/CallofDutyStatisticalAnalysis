
# Load necessary libraries
library(ggplot2)
library(dplyr)
library(readr)

# Load the dataset
cod_data <- read_csv("cod_stats.csv")

# Preview data
head(cod_data)

# Add Kill/Death ratio column
cod_data <- cod_data %>%
  mutate(kd_ratio = kills / ifelse(deaths == 0, 1, deaths))  # Avoid division by 0

# Summary statistics
summary_stats <- cod_data %>%
  summarise(
    avg_kills = mean(kills),
    avg_deaths = mean(deaths),
    avg_kd = mean(kd_ratio),
    avg_score = mean(score)
  )

print("Summary statistics:")
print(summary_stats)

# Visualize Kill/Death ratio distribution
ggplot(cod_data, aes(x = kd_ratio)) +
  geom_histogram(binwidth = 0.25, fill = "steelblue", color = "black") +
  labs(title = "Kill/Death Ratio Distribution", x = "K/D Ratio", y = "Player Count")

# Correlation: Kills vs. Score
ggplot(cod_data, aes(x = kills, y = score)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(title = "Kills vs. Score", x = "Kills", y = "Score")

# Linear regression: Score ~ Kills + Assists + Deaths
model <- lm(score ~ kills + assists + deaths, data = cod_data)

print("Regression Summary:")
summary(model)

# Predict score for a new player
new_player <- data.frame(kills = 20, assists = 5, deaths = 7)
predicted_score <- predict(model, newdata = new_player)
print(paste("Predicted score:", round(predicted_score, 0)))
