library(tidyverse)

# # define paths to data sets
# directory_path <- file.path(dirname(dirname(getwd())))
# directory_path
# 
# file_path <- file.path(directory_path, "data", "summer-olympic-games.csv")
# file_path
# 
# # import the data sets
# summer_games <- read.csv(file_path, stringsAsFactors = FALSE)
# summer_games <- as_tibble(summer_games)
# summer_games
# str(summer_games)
# 
# 
# colnames(summer_games)


# ------------------- without using ggplot ------------------
hist(iris$Petal.Length,
     main="Distribution of Petal Length",
     xlab="Petal Length",
     col="steelblue")



# ------------------- using ggplot ------------------



