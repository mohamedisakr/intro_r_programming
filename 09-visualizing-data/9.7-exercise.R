library(tidyverse)
library(ggthemes)
# install.packages("wesanderson")
library(wesanderson)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

file_path <- file.path(directory_path, "data", "employee_data_na.csv")
file_path

# import the data sets

emps <- read.csv(file_path, stringsAsFactors = FALSE)
emps <- as_tibble(emps)
str(emps)


emps$title <- as.factor(emps$title)
emps$gender <- as.factor(emps$gender)


emps_above_45k <- emps %>% drop_na() %>% filter(salary > 45000)
emps_above_45k

# Using the filtered data from Exercise 21, create a box plot showing the salary distribution 
# according to position.
# box_plot <- ggplot(emps, aes(x = salary, y = title))
# box_plot + geom_boxplot() + 
#   labs(y = "Title", x = "Salary", title = "Salary Distribution") + theme_light()
# box_plot

gg <- ggplot(emps_above_45k, aes(x = title, y = salary))
box_plot <- gg + geom_boxplot(outlier.color = "Red", outlier.shape = 4) + 
  geom_jitter(width = 0.3, aes(color = gender)) + 
  ggtitle("Salary distribution", subtitle = "based on position and gender") +
  ylab("Salary") + xlab("Job position") + 
  coord_flip() +
  theme_economist_white() +
  theme(legend.position = "right", axis.text.x = element_text(angle = 90, hjust = 1))
  # labs(y = "Title", x = "Salary", title = "Salary Distribution") + theme_light()

box_plot

?geom_jitter

# Set outlier identifiers.

# Add a layer that overlays data points on each position box and have them be colored according to gender.

# Set a title "Salary distribution" and a subtitle "based on position and gender".

# Set the axis labels.

# Add a theme. 

# P.S. To make the title labels fit on the canvas, set the following argument in the theme layer:
  
  axis.text.x = element_text(angle = 90, hjust = 1)

# This rotates the labels at 90 degrees, and adjusts their horizontal justification.

# Use the appropriate canvas orientation.

# Finally, think about coloring your graph. Is there an easier way to get tasteful combinations 
#  of colors than doing it manually? Yes, there is.

# Lookup the wesanderson package. Lookup the RColorBrewer package. 
# Lookup the scale_color_manual() function, and the scale_color_brewer() function. 
# Set a palette for your graph to make it look great. 