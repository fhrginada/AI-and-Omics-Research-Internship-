# -----------------------------
# Assignment 2: Gene Classification
# -----------------------------

# Function to classify genes
classify_gene <- function(logFC, padj) {
  if (is.na(padj)) padj <- 1      # Treat missing padj as 1
  if (is.na(logFC)) return("Not_Significant")
  
  if (logFC > 1 && padj < 0.05) {
    return("Upregulated")
  } else if (logFC < -1 && padj < 0.05) {
    return("Downregulated")
  } else {
    return("Not_Significant")
  }
}

# Define input and output folders
input_dir  <- "raw_data"     # where DEGs_Data_1.csv & DEGs_Data_2.csv are stored
output_dir <- "Results"      # where processed files will be saved

# Create output folder if it doesn't exist
if (!dir.exists(output_dir)) {
  dir.create(output_dir)
}

# Files to process
files_to_process <- c("DEGs_Data_1.csv", "DEGs_Data_2.csv")

# Empty list to store processed data
result_list <- list()

# Loop through each file
for (file_name in files_to_process) {
  cat("\nProcessing:", file_name, "\n")
  
  # Full path to input file
  input_file_path <- file.path(input_dir, file_name)
  
  # Check if file exists
  if (!file.exists(input_file_path)) {
    warning(paste("File not found:", input_file_path, "- skipping."))
    next
  }
  
  # Import dataset
  df <- read.csv(input_file_path, stringsAsFactors = FALSE)
  cat("File imported successfully.\n")
  
  # Check required columns
  required <- c("Gene_Id", "padj", "logFC")
  if (!all(c("padj","logFC") %in% names(df))) {
    stop("Missing columns in ", file_name, ". Must contain padj and logFC.")
  }
  
  # Convert padj & logFC to numeric
  df$padj  <- as.numeric(as.character(df$padj))
  df$logFC <- as.numeric(as.character(df$logFC))
  
  # Replace NA in padj with 1
  na_padj <- sum(is.na(df$padj))
  if (na_padj > 0) {
    cat(" - Found", na_padj, "NA(s) in padj. Replacing with 1.\n")
    df$padj[is.na(df$padj)] <- 1
  }
  
  # Add status column using classification function
  df$status <- NA_character_
  for (i in seq_len(nrow(df))) {
    df$status[i] <- classify_gene(df$logFC[i], df$padj[i])
  }
  
  # Save results in list
  result_list[[file_name]] <- df
  
  # Save processed CSV to Results folder
  output_file_path <- file.path(output_dir, paste0("processed_", file_name))
  write.csv(df, output_file_path, row.names = FALSE)
  cat("Results saved to:", output_file_path, "\n")
  
  # Print summary
  cat("Status summary for", file_name, ":\n")
  print(table(df$status, useNA = "ifany"))
  cat("\nTotal genes:", nrow(df), "\n")
}

# Access processed results from list
results_1 <- result_list[["DEGs_Data_1.csv"]]
results_2 <- result_list[["DEGs_Data_2.csv"]]

cat("\nAll files processed successfully.\n")
