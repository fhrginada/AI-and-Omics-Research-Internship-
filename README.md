# Module I – AI_Omics_Internship_2025

This repository contains the completed assignment for **Module I** of the **AI Omics Internship 2025**.

## 📁 Repository Structure

AI_Omics_Internship_2025/
├── raw_data/ # Original patient dataset (patient_info.csv)
├── clean_data/ # Cleaned dataset (patient_info_clean.csv)
├── scripts/ # R scripts (class_Ib.R)
├── Nada_Class_Ib_Assignment.RData
└── README.md # Project documentation


---

## 📌 Assignment Tasks

### 1. Project Setup
- Created RStudio project: `Module_I`
- Organized subfolders: `raw_data`, `clean_data`, `scripts`, `results`, `plots`

### 2. Data Handling
- Downloaded `patient_info.csv` from GitHub
- Inspected structure and identified variables with incorrect data types
- Cleaned and converted data types appropriately:
  - Converted `gender` and `diagnosis` to factors
  - Cleaned and standardized `smoker` column
  - Created a binary variable `smoker_binary`

### 3. Output
- Saved cleaned dataset as: `clean_data/patient_info_clean.csv`
- Saved full R script as: `scripts/class_Ib.R`
- Saved workspace as: `Nada_Class_Ib_Assignment.RData`

---

## 📦 Files Included

| File/Folder | Description |
|-------------|-------------|
| `patient_info.csv` | Raw dataset (downloaded from GitHub) |
| `patient_info_clean.csv` | Cleaned version of the dataset |
| `class_Ib.R` | Script containing all processing steps |
| `Nada_Class_Ib_Assignment.RData` | R workspace with all variables saved |

---

## 📊 Notes
- All transformations were done using base R functions.
- The dataset was examined for inconsistencies, including spacing and case sensitivity in string values.
- The final workspace includes all objects created during the session.

---

## ✍️ Author
Nada – Biomedical Informatics Student | AI Omics Internship 2025

