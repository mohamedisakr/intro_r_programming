library(tidyverse)

summer_games <- read.csv("summer-olympic-games.csv", stringsAsFactors = FALSE)
summer_games <- as_tibble(summer_games)
summer_games
str(summer_games)


colnames(summer_games)

## ----------- remove double quotes & leading and trailing spaces
summer_games$City.Country <- str_squish(summer_games$City.Country)
summer_games$Continent <- str_squish(summer_games$Continent)
summer_games


# --------- split city and country
summer_games <- summer_games %>% 
  separate_wider_delim(City.Country, delim = " - ", names =  c("City", "Country"))
summer_games
str(summer_games)


# -------------- make the continent variables into a factor
summer_games$Continent <- as.factor(summer_games$Continent)
str(summer_games)
summer_games

# summer_games <- summer_games_separated %>% group_by(Continent) %>% summarize(freq = n())
# summer_games

# Create a bar chart for continent frequency
bar <- ggplot(summer_games, aes(x = Continent))
bar + geom_bar(fill = "steelblue") + theme_light()  # + geom_text(aes(label = count)) 



# ggplot(data = summer_games, aes(x = factor(Continent))) + 
#   theme_light() +
#   geom_bar(stat = "identity", fill = "steelblue", y = count()) + 
#   labs(y = "Count", x = "Continent", title = "Number of olympic games by continent")
#   # geom_text(aes(label = freq), vjust = -0.3, size = 4) +
# p

