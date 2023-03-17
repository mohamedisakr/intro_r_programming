library(tidyverse)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

file_path <- file.path(directory_path, "data", "earnings.csv")
file_path

# import the data sets
earnings <- read.csv(file_path, stringsAsFactors = FALSE)
earnings <- as_tibble(earnings)


earnings

# str(earnings)
# 
# colnames(earnings)

# -------------- using tabyl ----------------------
library(janitor)

t1 <- earnings %>% tabyl(Month)
t1

earnings %>%
  adorn_totals("row") %>%
  adorn_pct_formatting()


t2 <- earnings %>%
  tabyl(Month)
t2

# -------------- using CrossTable must be used with 2 variable ----------------------
library(gmodels)
CrossTable(earnings$Month)



# -------------- using margin.table() function (does not work) ----------------------

# find sum of months

data <- matrix(earnings, ncol = 4)
data

margin.table(earnings, margin=1)


# -------------- https://stackoverflow.com/questions/66136737/add-total-row-for-each-group-in-a-column-in-df ----------------------


library( janitor )
earnings %>%
  arrange( Month ) %>%
  split( .[,"Month"] ) %>%
  map_df(., adorn_totals)








