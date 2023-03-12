
#----------------- intro to ggplot2 ----------------

library(tidyverse)

hdi <- read.csv("hdi-cpi.csv", stringsAsFactors = FALSE)
hdi <- as.tibble(hdi)

head(hdi)
str(hdi)


scatterplot <- ggplot(hdi)
scatterplot


scatterplot <- ggplot(hdi, aes(CPI.2015, HDI.2015))
scatterplot


scatterplot + geom_point(aes(color = Region), size = 3) 
+ facet_grid(Region ~.) + stat_smooth() + coord_cartesian(xlim = c(0.75, 1))



scatterplot + geom_point(aes(color = Region), size = 3) + stat_smooth() + theme_minimal()








