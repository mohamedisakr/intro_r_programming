# The weather data we used in the last lesson was already almost tidy when we imported it. 
# Please find a lot less tidy version in the resources for this lesson and go through the 
# necessary steps to clean it.

library(tidyverse)

weather_data <- read.csv("weather-untidy.csv", stringsAsFactors = FALSE)
weather_data <- as.tibble(weather_data)
str(weather_data)
head(weather_data)

colnames(weather_data)
ncol(weather_data)

# weather_group_by_year <- weather_data %>%
# weather_filtered <- weather_data %>% group_by(element) %>% summarize(count = n())
# weather_filtered

weather_gathered <- 
  weather_data %>% 
  gather(d1:d31, key = "day", value = "temperature", na.rm = T) %>%
  arrange(year, month)
weather_gathered
        
# Note: read the documentation on the parse_number() function from the readr package, and 
# try to use it when cleaning the data.

weather_spread <- weather_gathered %>%
  spread(key =  element, value =  temperature) %>%
  arrange(year, month)

weather_spread


# Play around with the tb data, too; try to reproduce what we did in the lesson - you will 
# need to do a little bit more tidying than we did together. Hint: if you are confused about 
# what to do with the gender-age variables, try reading the documentation on the str_replace() 
# function from the stringr package.