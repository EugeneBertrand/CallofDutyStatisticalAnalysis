# Call of Duty Player Stats Analysis in R

This project analyzes a sample dataset of player performance statistics from a fictional Call of Duty-style game using R. It demonstrates basic data manipulation, visualization, and linear regression modeling.

## 📂 Files

- **cod_stats.csv**: Sample player statistics dataset.
- **cod_analysis.R**: R script that reads the dataset, computes kill/death ratio, summarizes statistics, creates visualizations, and builds a linear regression model.
- **README.md**: This file.

## 🔧 Requirements

- R (v4.0 or higher recommended)
- R packages:
  - `ggplot2`
  - `dplyr`
  - `readr`

Install packages with:
```R
install.packages(c("ggplot2", "dplyr", "readr"))
```

## 🚀 How to Run

1. Open RStudio or your preferred R environment.
2. Set the working directory to the folder containing the files.
   ```R
   setwd("path/to/your/folder")
   ```
3. Run the script:
   ```R
   source("cod_analysis.R")
   ```

## 🧠 Features Demonstrated

- Data preprocessing with `dplyr`
- Histogram and scatter plot visualizations with `ggplot2`
- Linear regression modeling with `lm()`
- Score prediction using new input data

## 🔍 Sample Output

- Summary of average kills, deaths, scores, and K/D ratio
- Histogram of K/D ratios
- Scatter plot of kills vs. score with regression line
- Predicted score for a hypothetical player

Feel free to extend this project with more features like weapon types, accuracy stats, or map-based performance!
