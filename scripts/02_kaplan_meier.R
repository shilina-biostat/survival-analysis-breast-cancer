library(survival)
library(survminer)

fit <- survfit(
  Surv(Time_years, status) ~ radiation_therapy_NO,
  data = data
)

ggsurvplot(
  fit,
  data = data,
  pval = TRUE,
  conf.int = TRUE,
  risk.table = TRUE
)
