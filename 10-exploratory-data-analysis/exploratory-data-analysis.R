library(tidyverse)

# ---------------- variance & standard deviation & coefficient of variability ---------------------
# univariate measures of dispersion

ny <- c(1, 2, 3, 3, 5, 6, 7, 8, 9, 11)
la <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
mx <- c(18.81, 37.62, 56.43, 56.43, 94.05, 112.86, 131.67, 150.48, 169.29, 206.91) 

pizza <- data_frame(ny, la, mx)
pizza


sapply(pizza, mean)
sapply(pizza, sd)
sapply(pizza, var)

coef_var <- sapply(pizza, sd)/sapply(pizza, mean)
coef_var


# ---------------- covariance & correlation ---------------------
# multivariate measures of dispersion

land_states <- read.csv("landdata-states.csv", stringsAsFactors = FALSE)
land_states <- as_tibble(land_states)
str(land_states)
land_states

land_states %>% subset(Date == 2001.25) %>% 
  ggplot(aes(y = Structure.Cost, x = log(Land.Value))) + 
  geom_point() + theme_light() + 
  labs(x = "Land Value (transformed)", y = "Structure Cost (USD)", 
       title = "Relationship between land value and structure cost")

cor_coef <- cor(land_states$Structure.Cost, land_states$Land.Value)
cor_coef

cor_coef_test <- cor.test(land_states$Structure.Cost, land_states$Land.Value)
cor_coef_test


