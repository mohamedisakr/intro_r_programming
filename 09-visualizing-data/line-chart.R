library(tidyverse)

animals <- read.csv("animals.csv", stringsAsFactors = FALSE)
animals <- as_tibble(animals)
str(animals)
animals

#------------ 1 line only 
ggplot(animals, aes(x = Year, y = Bears)) + 
  geom_line(color = "#0099f9", size = 2) +
  geom_point(color = "#0099f9", size = 5) +
  labs( x = "Years", y = "Bears", title = "Bears increase", 
       subtitle = "Data from 2017 to 2022",
       caption = "Source: investopedia.com") +
  theme(plot.title = element_text(color= "#000099f9", size = 20, face = "bold", hjust = 0.5), 
         plot.subtitle = element_text(size = 13, face = "bold", hjust = 0.5), 
         plot.caption = element_text(face = "italic", hjust = 0))

