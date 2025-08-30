# Module I – AI_Omics_Internship_2025

This repository contains the completed assignments for **Module I** of the **AI Omics Internship 2025**.

## 📁 Repository Structure

AI_Omics_Internship_2025/  
├── raw_data/              # Original datasets (patient_info.csv , metadata.csv, DEGs_Data_1.csv, DEGs_Data_2.csv, ...)  
├── clean_data/            # Cleaned dataset (patient_info_clean.csv)  
├── scripts/               # R scripts (class_Ib.R, class_Ic.R, class_2.R)  
├── results/               # Output results (processed DEG files, BMI calculations, etc.)  
├── plots/                 # Generated plots (if any)  
├── Nada_Class_Ib_Assignment.RData  
├── Nada_Class_Ic_Assignment.RData  
├── Nada_Class_2_Assignment.RData  
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
  - Saved workspace as: `Nada_Class_Ic_Assignment.RData`  

---

### 🔹 Class 2
- **File Handling**
  - Defined input (`raw_data/`) and output (`results/`) directories  
  - Implemented file existence checks and created output folder if missing  
  - Processed multiple CSV files: `DEGs_Data_1.csv`, `DEGs_Data_2.csv`, ...  

- **Data Processing**
  - Imported DEG datasets  
  - Handled missing values in numeric columns (`padj`, `logFC`)  
  - Converted strings to numeric with safe coercion  
  - Implemented `classify_gene()` function to assign gene regulation status based on thresholds  

- **Automation with Loops**
  - Iterated over all input files with `for` loop  
  - Generated processed results per file  
  - Summarized gene status with frequency tables  

- **Output**
  - Saved processed DEG files in `results/` with prefix `processed_`  
  - Stored results in R lists for further analysis  
  - Saved script as: `scripts/class_Id.R`  
  - Saved workspace as: `Nada_Class_Id_Assignment.RData`  

---

## 📦 Files Included

| File/Folder | Description |
|-------------|-------------|
| `patient_info.csv` | Raw dataset (downloaded from GitHub) |
| `metadata.csv` | Metadata file |
| `patient_info_clean.csv` | Cleaned version of the dataset |
| `DEGs_Data_1.csv`, `DEGs_Data_2.csv` | Raw DEGs datasets |
| `class_Ib.R` | Script containing Class Ib processing steps |
| `class_Ic.R` | Script containing Class Ic tasks |
| `class_2.R` | Script containing Class Id (DEGs processing) |
| `Nada_Class_Ib_Assignment.RData` | Workspace for Class Ib |
| `Nada_Class_Ic_Assignment.RData` | Workspace for Class Ic |
| `Nada_Class_2_Assignment.RData` | Workspace for Class Id |

---

## 📊 Notes
- All transformations were done using base R functions.  
- Control structures (`if`, `if...else`, `for` loops) were applied in practical data cleaning tasks.  
- File handling and iteration techniques were used to process multiple datasets.  
- String values were standardized and numeric conversions handled carefully.  
- Binary conversions followed the `"Yes" → 1`, `"No" → 0` convention.  

---

## ✍️ Author
Nada – Biomedical Informatics Student | AI Omics Internship 2025
