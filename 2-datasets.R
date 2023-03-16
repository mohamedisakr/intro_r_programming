library(tidyverse)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

summer_file_path <- file.path(directory_path, "data", "summer-olympic-games.csv")
summer_file_path

winter_file_path <- file.path(directory_path, "data", "winter-olympic-games.csv")
winter_file_path

# import the data sets
summer_games <- read.csv(summer_file_path, stringsAsFactors = FALSE)
summer_games <- as_tibble(summer_games)
summer_games
str(summer_games)

winter_games <- read.csv(winter_file_path, stringsAsFactors = FALSE)
winter_games <- as_tibble(winter_games)
winter_games
str(winter_games)

all_games <- bind_rows(summer_games, winter_games)  # inner_join(summer_games, winter_games)
all_games
str(all_games)