library(survival)

# Cox proportional hazards model
cox_model <- coxph(
  Surv(Time_years, status) ~
    age_at_initial_pathologic_diagnosis +
    radiation_therapy_NO +
    lymph_node_examined_count,
  data = data
)

# Model summary
summary(cox_model)

# Proportional hazards assumption
cox.zph(cox_model)

# Forest plot
ggforest(cox_model, data = data, fontsize = 0.55)
