library(survival)

cox_model <- coxph(
  Surv(Time_years, status) ~
    age_at_initial_pathologic_diagnosis +
    radiation_therapy_NO +
    lymph_node_examined_count,
  data = data
)

summary(cox_model)

cox.zph(cox_model)
