# Load libraries
library(survival)
library(survminer)

# Kaplan–Meier model
fit <- survfit(
  Surv(Time_years, status) ~ radiation_therapy_NO,
  data = data
)

# Survival plot
ggsurvplot(
  fit,
  data = data,
  pval = TRUE,
  conf.int = TRUE,
  risk.table = TRUE
)
