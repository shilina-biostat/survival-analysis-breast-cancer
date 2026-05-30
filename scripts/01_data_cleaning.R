library(readr)

data <- read_csv("clinical_data(labels).csv")

data$Time_years <- data$Time / 365

data$status <- ifelse(data$vital_status == 2, 1, 0)

summary(data)
