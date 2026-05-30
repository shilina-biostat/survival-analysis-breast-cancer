# Load libraries
library(readr)
library(dplyr)

# Import dataset
data <- read_csv("clinical_data(labels).csv")

# Convert survival time to years
data$Time_years <- data$Time / 365

# Recode survival status
data$status <- ifelse(data$vital_status == 2, 1, 0)

# Summary statistics
summary(data)
