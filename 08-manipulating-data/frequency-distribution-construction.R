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
