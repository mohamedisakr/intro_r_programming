library(tidyverse)

summer_games <- read.csv("summer-olympic-games.csv", stringsAsFactors = FALSE)
summer_games <- as_tibble(summer_games)
summer_games
str(summer_games)

winter_games <- read.csv("winter-olympic-games.csv", stringsAsFactors = FALSE)
winter_games <- as_tibble(winter_games)
winter_games
str(winter_games)

all_games <- bind_rows(summer_games, winter_games)  # inner_join(summer_games, winter_games)
all_games
str(all_games)