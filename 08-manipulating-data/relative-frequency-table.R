library(tidyverse)

blue <- c(20, 5)
white <- c(15, 3)
surfboard <- data.frame(blue, white)

surfboard


surfboard %>%
  group_by(blue, white) %>%
  summarise(n = n()) %>%
  mutate(freq = n / sum(n))


rowSums(surfboard)

colSums(surfboard)