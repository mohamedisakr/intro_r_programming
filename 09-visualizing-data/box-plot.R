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

data <- c(1, 9, 17, 2, 9, 17, 3, 10, 18, 3, 11, 19, 4, 12, 19, 5, 12, 20, 
          6, 13, 21, 6, 13, 22, 7, 14, 23, 8, 16, 27)

str(data)

boxplot <- ggplot(as_data_frame(data), aes(x = data)) 
boxplot +  geom_boxplot() + coord_flip()

#------------

df <- mtcars
df$cyl <- as.factor(df$cyl)

head(df)

boxplot <- ggplot(df, aes(x = mpg)) 
boxplot +  geom_boxplot() + coord_flip()



