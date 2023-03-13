library(tidyverse)

emps <- read.csv("employee_data_na.csv", stringsAsFactors = FALSE)
emps <- as_tibble(emps)
str(emps)

# Using the employees data, plot the salary frequencies. 
# Limit the salaries under consideration to only those above 45,000 per year.
emps_above_45k <- emps %>% filter(salary > 45000)
emps_above_45k

# Choose an appropriate binwidth, and appearance. = 5000

# Title the x axis as "Salary", and the y axis as "Number of employees in the salary bracket".

# Title the plot as "Title distribution in the employee data".

# Install the ggthemes package and chose a theme from there. 
# Look at the descriptions of each and choose one that has modifiable size and font family.
# Increase the size and set the font family to serif. 

hist <- ggplot(data = emps_above_45k, aes(x = salary))
hist + geom_histogram(binwidth = 5000) +
  labs(
    x = "Salary", 
    y = "Number of employees in the salary bracket",
    title = "Title distribution in the employee data")

# install.packages(ggthemes)
library("ggthemes") 

ggp_base <- hist #+ theme_base() + ggtitle("theme_base()")
ggp_base

