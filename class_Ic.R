# 1. Check Cholesterol level (using if) 

cholesterol <- 230

if (cholesterol > 240) {
  print("High Cholesterol" )
  
}else{
  print("Normal Cholesterol")
}


# 2. Blood Pressure Status (using if...else)

Systolic_bp <- 130


if (Systolic_bp < 120) {
  print("Blood Pressure is normal")
} else {
  print("Blood Pressure is high")
}

# 3. Automating Data Type Conversion with for loop
PATIENT.INFO <- read.csv(file.choose())
str(PATIENT.INFO)

PATIENT.INFO_COPY <- PATIENT.INFO

for (i in 1:ncol(PATIENT.INFO_COPY)) {
  if (is.character(PATIENT.INFO_COPY[[i]])) {
    PATIENT.INFO_COPY[[i]] <- as.factor(PATIENT.INFO_COPY[[i]])
  }
}
str(PATIENT.INFO_COPY)


Metadata <- read.csv(file.choose())
str(Metadata)

Metadata_COPY <- Metadata

for (i in 1:ncol(Metadata_COPY)) {
  if (is.character(Metadata_COPY[[i]])) {
    Metadata_COPY[[i]] <- as.factor(Metadata_COPY[[i]])
  }
}
str(Metadata_COPY)

# 4. Converting Factors to Numeric Codes


binary_cols <- c("smoker")  


for (col in binary_cols) {
  PATIENT.INFO[[col]] <- ifelse(PATIENT.INFO[[col]] == "Yes", 1, 0)
}
