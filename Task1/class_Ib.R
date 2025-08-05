#TASK_B1

# Inside the project directory, create the following subfolders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("Tasks")
dir.create("plots")

# load the dataset into your R environment
patient_info <- read.csv("C:\\Users\\MG\\Downloads\\patient_info.csv")

# Inspect the structure of the dataset using appropriate R functions
View(patient_info)
str(patient_info)
summary(patient_info)

# Identify variables with incorrect or inconsistent data types.

#gender and diagnosis must be factors
patient_info$gender <- as.factor(patient_info$gender)
patient_info$diagnosis <-as.factor(patient_info$diagnosis)

View(patient_info)
str(patient_info)

# Create a new variable for smoking status as a binary factor:
# 1 for "Yes", 0 for "No"
patient_info$smoker <- factor(patient_info$smoker,
                          levels = c("No", "Yes"),
                          labels = c(0, 1)) 
str(patient_info)

# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(patient_info,file = "clean_data/patient_data_clean.csv")






