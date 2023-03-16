library(tidyverse)
library(ggthemes)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

file_path <- file.path(directory_path, "data", "employee_data_na.csv")
file_path

# import the data sets
emps <- read.csv(file_path, stringsAsFactors = FALSE)
emps <- as_tibble(emps)
str(emps)

any(is.na(emps$gender))

emp_by_position <- emps %>% group_by(title) %>% summarise(freq = n()) %>% arrange(freq)
emp_by_position
str(emp_by_position)


# Create a bar chart representation of the number of employees in the 
# different positions in the employees data by gender.
p <- ggplot(data = emp_by_position, aes(x = title, y = freq)) + theme_light() +
  geom_bar(stat = "identity", fill = "steelblue") + 
  geom_text(aes(label = freq), vjust = -0.3, size = 4) +
  labs(y = "Employee count", x = "Job position", title = "Number of employess by position and gender")
p



# --------------------------- working fine -------------------------------------
# p<-ggplot(data = emp_by_position, aes(x = title, y = freq)) +
#   geom_bar(stat="identity")
# p

#---------------- does not working ------------------------
# bar <- ggplot(emps, aes(x = title, fill = gender))
# bar + geom_bar() + theme_light() + 
#   labs(y = "Employee count", x = "Job position", title = "Number of employess by position and gender")
# bar 


#---------------- does not working ------------------------
# bar <- ggplot(emps, aes(gender, fill = title))
# bar + geom_bar() + theme_fivethirtyeight() +
#   scale_fill_manual(values = c("magenta", "darkorange", "midnightblue","springgreen4", "brown1", "gold")) +
#   labs(title = "Job Positions by Gender")
# bar



# Set the theme to fivethirtyeight.

# Add plot title "Job positions by gender", and axes titles: "Job position", and "Employee count". 
# Can you do that?
  
# Try setting the theme to something different and give it another go.

# Look up the scale_fill_manual() and scale_color_manual() functions. Try setting custom colors 
# to your plot.
p <- ggplot(data = emp_by_position, aes(x = title, y = freq)) + theme_light() +
  geom_bar(stat = "identity", fill = "steelblue") + 
  scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9")) +
  geom_text(aes(label = freq), vjust = -0.3, size = 4) +
  labs(y = "Employee count", x = "Job position", title = "Number of employess by position and gender")
p

# Try to change the position on the canvas the legend is in. Use the theme() function to do that.

# Try to reverse the aesthetic mappings. Does this graph give you a better idea of your data? Is 
# it easier to read? (Shouldn't be ????)