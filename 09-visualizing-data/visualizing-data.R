
#----------------- intro to ggplot2 ----------------

library(tidyverse)

hdi <- read.csv("hdi-cpi.csv", stringsAsFactors = FALSE)
hdi <- as_tibble(hdi)

head(hdi)
str(hdi)


scatterplot <- ggplot(hdi)
scatterplot


scatterplot <- ggplot(hdi, aes(CPI.2015, HDI.2015))
scatterplot


scatterplot + geom_point(aes(color = Region), size = 3) + 
  facet_grid(Region ~.) + stat_smooth() + coord_cartesian(xlim = c(0.75, 1))



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



#----------------- building bar chart ----------------
# ?aes

bar <- ggplot(data = df, aes(x = Sex, fill = Survived))
bar + geom_bar() + theme_light() + 
  labs(y = "Passangers Count", x = "Gender", title = "Survival Rate by Gender") + 
  facet_wrap(Sex ~ Pclass)



hist <- ggplot(data = df, aes(x = Age, fill = Survived))

hist + geom_histogram(binwidth = 5, color = "white") + 
  labs(y = "# Passangers", x = "Age", title = "Age Distribution") + theme_light()



survived_non_survived <- df %>% 
  group_by(Survived) %>% 
  summarise(count = n(), relative_freq = ((count/nrow(df))*100))

survived_non_survived

# --------------

survived_by_gender <- df %>% 
  group_by(Sex, Survived, Pclass) %>% 
  summarise(count = n(), relative_freq = ((count/nrow(df))*100))

survived_by_gender






