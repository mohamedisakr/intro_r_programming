# Requirements: the employees data from Exercise 17.

# Load the employees data and convert it into a tibble. 
# Then, make the gender and title variables into a factor.
# Hint: the commands are analogous to the as.data.frame() function.
emps <- read.csv("employee_data_na.csv",  stringsAsFactors = FALSE) # , skip = 23
emps <- as_tibble(emps)
str(emps)

emps$gender <- as.factor(emps$gender)
str(emps)

emps$title <- as.factor(emps$title)
str(emps)

# Check if the data has any missing values.
any(is.na(emps))

# Arrange the data set by gender, then last name, and make first_name, last_name, 
# and gender the first three variables in the data frame. 
# Show only the employees whose salary is higher than 70,000.
emps_sorted <- emps %>% 
  select(first_name, last_name, gender, everything()) %>%
  filter(salary >= 70000) %>% 
  arrange(gender, last_name)
emps_sorted



# Use the ends_with() function with select.
emps_sorted <- emps %>% 
  select(ends_with("name"), gender, everything()) %>%
  filter(salary >= 70000) %>% 
  arrange(gender, last_name)
emps_sorted

# Create a data frame containing only the employee numbers of those earning more than 70,000.
# more_70k <- emps %>% 
#   select(emp_no, salary) %>%
#   filter(salary > 70000)

more_70k <- as.data.frame(emps_sorted["emp_no"])
head(more_70k)
str(more_70k)


# Find out how much each position (title) earns on average by gender; 
# create a new variable that represents the average monthly figures and arrange your 
# result by gender and average monthly salary, from largest to smallest.
emps_cat <- emps %>% 
  group_by(title, gender) %>% 
  summarize(avg_salary = mean(salary, na.rm = T)) %>%
  mutate(monthly = avg_salary/12) %>%
  arrange(gender, desc(monthly))
emps_cat





