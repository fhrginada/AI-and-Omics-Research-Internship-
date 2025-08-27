# Module I – AI_Omics_Internship_2025

This repository contains the completed assignments for **Module I** of the **AI Omics Internship 2025**.

## 📁 Repository Structure

AI_Omics_Internship_2025/  
├── raw_data/              # Original datasets (patient_info.csv , metadata.csv)  
├── clean_data/            # Cleaned dataset (patient_info_clean.csv)  
├── scripts/               # R scripts (class_Ib.R, class_Ic.R)  
├── results/               # Output results (if any)  
├── plots/                 # Generated plots (if any)  
├── Nada_Class_Ib_Assignment.RData  
└── README.md              # Project documentation  

---

## 📌 Assignment Tasks

### 🔹 Class Ib
- **Project Setup**
  - Created RStudio project: `Module_I`
  - Organized subfolders: `raw_data`, `clean_data`, `scripts`, `results`, `plots`

- **Data Handling**
  - Downloaded `patient_info.csv` from GitHub
  - Inspected structure and identified variables with incorrect data types
  - Cleaned and converted data types appropriately:
    - Converted `gender` and `diagnosis` to factors
    - Cleaned and standardized `smoker` column
    - Created a binary variable `smoker_binary`

- **Output**
  - Saved cleaned dataset as: `clean_data/patient_info_clean.csv`
  - Saved full R script as: `scripts/class_Ib.R`
  - Saved workspace as: `Nada_Class_Ib_Assignment.RData`

---

### 🔹 Class Ic
- **Control Structures**
  - Implemented `if` statements to check cholesterol levels  
  - Implemented `if...else` statements to classify blood pressure  

- **Data Transformation**
  - Created dataset copies for safe manipulation  
  - Identified categorical columns and converted them to factors using loops  
  - Stored factor column names in `factor_cols`  
  - Converted selected factor columns (`Yes`/`No`) into numeric binary variables (1/0) using `ifelse()` and loops  

- **Output**
  - Saved updated script as: `scripts/class_Ic.R`  

---

## 📦 Files Included

| File/Folder | Description |
|-------------|-------------|
| `patient_info.csv` | Raw dataset (downloaded from GitHub) |
| `patient_info_clean.csv` | Cleaned version of the dataset |
| `class_Ib.R` | Script containing Class Ib processing steps |
| `class_Ic.R` | Script containing Class Ic tasks |
| `Nada_Class_Ib_Assignment.RData` | Workspace for Class Ib |


---

## 📊 Notes
- All transformations were done using base R functions.
- Character vs. factor data types were carefully checked and corrected.
- String values were standardized to remove case sensitivity and extra spaces.
- Binary conversions followed the `"Yes" → 1`, `"No" → 0` convention.

---

## ✍️ Author
Nada – Biomedical Informatics Student | AI Omics Internship 2025
