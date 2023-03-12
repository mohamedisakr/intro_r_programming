
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


#----------------- building histogram ----------------


library(tidyverse)


df <- read.csv("titanic.csv", stringsAsFactors = FALSE)
df <- as.tibble(df)

df


df$Survived <- as.factor(df$Survived)
df$Pclass <- as.factor(df$Pclass)
df$Sex <- as.factor(df$Sex)
df$Embarked <- as.factor(df$Embarked)

str(df)

hist <- ggplot(data = df, aes(x = Age))

hist + geom_histogram(binwidth = 5, color = "darkslategray", fill = "darkslategray4", alpha = 0.5) + 
  ggtitle("Age Distribution") + labs(y = "# Passangers", x = "Age") + theme_minimal()















