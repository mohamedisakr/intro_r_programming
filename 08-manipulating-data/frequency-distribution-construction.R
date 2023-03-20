library(tidyverse)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

file_path <- file.path(directory_path, "data", "data.tsv")
file_path

# import the data sets
imdb <- read_tsv(file_path)
imdb <- as.tibble(imdb)
str(imdb)
head(imdb)

colnames(imdb)
ncol(imdb)

dist_freq_by_genre <- imdb %>% 
  group_by(genres) %>% 
  summarise(freq = n()) %>%
  mutate(relativeFreq = freq / sum(freq))

head(dist_freq_by_genre)

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