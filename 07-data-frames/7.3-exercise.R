# Download the employees dataset from the resources for this lesson.
getwd()

# Then, import it into R using your preferred import method.


# This is a large dataset, so limit the import to 200 observations. 
# Note that the dataset has Copyright information in the beginning (23 rows). 
# Any character variables should be stored as characters.
emps <- read.csv("employee_data_na.csv",  stringsAsFactors = FALSE)
head(emps)

str(emps)

emps["first_name"]

# Rename the variables as follows: 
# "Employee number", "First name", "Last name", "Birth date", "Gender", "Job title", 
# "Salary", "From date", "To date".

columns_names <- c("Employee number", "First name", "Last name", "Birth date", "Gender", "Job title",
                   "Salary", "From date", "To date")

colnames(emps) <- columns_names

str(emps)

# Export the data set you currently have as a CSV, without saving the row names.
write.csv(emps,file = "employee_data_exported.csv", row.names = FALSE)

# Import it back again to make sure everything is okay.
emps_exporteds <- read.csv("employee_data_exported.csv",  stringsAsFactors = FALSE)
head(emps_exporteds)

str(emps_exporteds)