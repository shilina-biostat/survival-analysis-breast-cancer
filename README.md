# Survival Analysis of Breast Cancer Patients Using Cox Proportional Hazards Models in R

## Objective

This project explores survival outcomes among breast cancer patients from the TCGA-BRCA dataset using Kaplan–Meier estimation and Cox proportional hazards regression models.


## Methods

- Exploratory Data Analysis (EDA)
- Missing data inspection
- Kaplan–Meier survival curves
- Log-rank test
- Cox proportional hazards regression
- Hazard ratio interpretation
- Proportional hazards assumption testing
- Publication-style survival visualizations

## Technologies

* R
* survival
* survminer
* tidyverse
* ggplot2


## Dataset

The analysis was performed using the TCGA-BRCA (The Cancer Genome Atlas Breast Cancer) clinical dataset containing survival outcomes and clinical characteristics of 1,063 breast cancer patients.
Source: [TCGA-BRCA clinical dataset on Kaggle](https://www.kaggle.com/datasets/jmalagontorres/tcga-brca-survival-analysis)

## How to Run

### 1. Clone the repository
```bash
git clone https://github.com/shilina-biostat/survival-analysis-breast-cancer.git
cd survival-analysis-breast-cancer
```

### 2. Download the dataset
Download the TCGA-BRCA clinical dataset from [Kaggle](https://www.kaggle.com/datasets/jmalagontorres/tcga-brca-survival-analysis) and place the CSV file in the `data/` folder:
```
data/
└── clinical_data(labels).csv
```

### 3. Install required R packages
```r
install.packages(c("survival", "survminer", "tidyverse", "ggplot2"))
```

### 4. Run the scripts in order
```r
source("scripts/01_data_cleaning.R")
source("scripts/02_kaplan_meier.R")
source("scripts/03_cox_model.R")
```
Output figures will be saved to `outputs/figures/`.

## Key Results

* Age at diagnosis was significantly associated with increased mortality risk (HR = 1.04, p < 0.001).
* Lymph node examined count was associated with poorer survival outcomes (HR = 1.02, p = 0.024).
* Radiation therapy status was not significantly associated with overall survival after covariate adjustment (HR = 0.99, p = 0.96).
* No violations of the proportional hazards assumption were detected (global test p = 0.75).

## Variable Description

| Variable | Description |
|---|---|
| `bcr_patient_barcode` | Unique patient identifier (TCGA barcode) |
| `Time` / `Time_years` | Survival time in days / years |
| `status` | Outcome: 1 = death, 0 = censored |
| `vital_status` | Raw vital status from TCGA (Dead/Alive) |
| `age_at_initial_pathologic_diagnosis` | Age at diagnosis (years) |
| `lymph_node_examined_count` | Number of lymph nodes examined |
| `radiation_therapy_NO` | Indicator: patient did NOT receive radiation therapy |
| `breast_carcinoma_surgical_procedure_name_*` | Type of surgery (Lumpectomy / Simple Mastectomy / Other) |
| `menopause_status_*` | Menopausal status at diagnosis |
| `pathologic_T_*` | Tumour size/extent (T1, T3, T4, TX) |
| `pathologic_N_*` | Regional lymph node involvement (N1–N3, NX) |
| `pathologic_M_*` | Distant metastasis status (M1, MX) |
| `pathologic_stage_*` | Overall pathologic stage (I, III, IV, X) |
| `tissue_prospective_collection_indicator_YES` | Whether tissue was collected prospectively |

## Limitations

- The dataset is observational; causal conclusions cannot be drawn.
- Survival time is right-censored and may introduce bias if censoring is non-random.
- Binary indicator variables were created via one-hot encoding; reference categories are implicit.
- The Cox model included age, radiation therapy status, and lymph node count; additional clinical variables were available but were not included in the final model.
- Results are specific to the TCGA-BRCA cohort and may not generalise to other populations.

## Kaplan–Meier Survival Curve

![KM Plot](outputs/figures/km_plot.png)

## Cox Model Forest Plot

![Forest Plot](outputs/figures/forest_plot.png)

## Repository Structure

```text
scripts/
├── 01_data_cleaning.R
├── 02_kaplan_meier.R
└── 03_cox_model.R

outputs/
└── figures/

README.md
```

