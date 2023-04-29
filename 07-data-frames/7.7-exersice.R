## Using the employee_data_na.CSV file, please answer the following questions:

library(here)

emps <- read.csv(here("data","employee_data_na.csv"))

## 1. Are there NA values in the data at all?

head(emps)

str(emps)

any(is.na(emps))

## 2. Find out in which columns the NA values are?

any(is.na(emps$emp_no))
any(is.na(emps$first_name))
any(is.na(emps$last_name))
any(is.na(emps$birth_date))
any(is.na(emps$gender))
any(is.na(emps$title))
any(is.na(emps$salary))
any(is.na(emps$latest_start_date))
any(is.na(emps$end_of_contract_date))

# colnames(emps)
# is.na(emps[, c("emp_no", "first_name", "last_name", "birth_date", "gender", "title",  "salary", "latest_start_date", "end_of_contract_date")])

## 3. Use the sum() function to find out how many missing values there are in total?
sum(is.na(emps))
# str(emps)
# any(is.na(emps$salary))
# sum(emps$salary, na.rm = TRUE)

## 4. How about by variable?
sum(is.na(emps$gender))
sum(is.na(emps$salary))

## 5. Edit the observations 
emps$gender[is.na(emps$gender)] <- "Unkown"
emps$salary[is.na(emps$salary)] <- median(emps$salary, na.rm = T)
emps["salary"]

## 6. Reload the data and delete the rows with missing values using the na.omit() function
emps <- na.omit(emps)
