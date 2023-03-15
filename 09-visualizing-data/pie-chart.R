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


#--------------------------- create pie chart ---------------------

summer_games_by_continent <- summer_games %>% 
  group_by(Continent) %>% 
  summarise(freq = n()) %>%
  mutate(Continent = fct_reorder(Continent, -freq)) 

summer_games_by_continent

pie <- ggplot(summer_games_by_continent, aes(x="", y = freq, fill = Continent))
pie + geom_bar(stat="identity", width=1) + coord_polar("y", start=0) + theme_void() + 
  geom_text(aes(label = paste0(freq, "%")), position = position_stack(vjust=0.5)) +
  labs(x = NULL, y = NULL, fill = NULL) +
  theme_classic() +
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()) +
  scale_fill_manual(values=c("#FF5733", "#75FF33", "#33DBFF", "#BD33FF",'orange'))


