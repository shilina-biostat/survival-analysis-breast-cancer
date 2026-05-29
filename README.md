Survival Analysis of Breast Cancer Patients Using Cox Proportional Hazards Models in R
Objective

This project explores survival outcomes among breast cancer patients from the TCGA-BRCA dataset using Kaplan–Meier estimation and Cox proportional hazards regression models.

Methods

Exploratory Data Analysis (EDA)
Missing data inspection
Kaplan–Meier survival curves
Log-rank test
Cox proportional hazards regression
Hazard ratio interpretation
Proportional hazards assumption testing
Publication-style survival visualizations

Technologies

R
survival
survminer
tidyverse
ggplot2

Key Results

Increasing age at diagnosis was significantly associated with increased mortality risk.
Lymph node examined count was associated with poorer survival outcomes.
Radiation therapy status was not significantly associated with overall survival after covariate adjustment.
The proportional hazards assumption was satisfied for all covariates.

Repository Structure

scripts/
outputs/
data/
README.md

