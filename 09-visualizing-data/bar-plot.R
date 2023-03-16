library(tidyverse)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

file_path <- file.path(directory_path, "data", "summer-olympic-games.csv")
file_path

# import the data sets
summer_games <- read.csv(file_path, stringsAsFactors = FALSE)
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

#---- sort bar plot 
summer_games_by_continent <- summer_games %>% 
  group_by(Continent) %>% 
  summarise(freq = n()) %>%
  mutate(Continent = fct_reorder(Continent, -freq)) #%>%

summer_games_by_continent

col <-  ggplot(summer_games_by_continent) 
col + geom_col(aes(Continent, freq))


  # ------------- does not work
# bar <- ggplot(summer_games, aes(x = reorder(Continent)))
# bar + geom_bar(fill = "steelblue") + theme_light()  # + geom_text(aes(label = count)) 

# ggplot(summer_games, aes(x = Continent)) +
#   geom_bar() +  ggtitle("Number of olympic games by continent")

# ggplot(data = summer_games, aes(x = factor(Continent))) + 
#   theme_light() +
#   geom_bar(stat = "identity", fill = "steelblue", y = count()) + 
#   labs(y = "Count", x = "Continent", title = "Number of olympic games by continent")
#   # geom_text(aes(label = freq), vjust = -0.3, size = 4) +
# p

