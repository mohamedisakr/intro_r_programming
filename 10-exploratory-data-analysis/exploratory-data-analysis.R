library(tidyverse)

# ---------------- Variance & standard deviation & coefficient of variability ---------------------
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

