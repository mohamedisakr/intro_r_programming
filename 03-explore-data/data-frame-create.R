# data(diamonds)

# install.packages("rlang")
# install.packages("tidyverse")

library("tidyverse")

data("diamonds")
View(diamonds)

head(diamonds)

# ?glimpse

str(diamonds)

as_tibble(diamonds)

data("mtcars")
str(mtcars)
mtcars

readr_example()

read_csv(readr_example("mtcars.csv"))

library(readxl)

readxl_example()

read_excel(readxl_example("type-me.xlsx"))

excel_sheets(readxl_example("type-me.xlsx"))

# read_log()

x <- c(3, 5, 7)

y <- c(2, 4, 6) 

x < 5 & y < 5

x < 5 && y < 5

