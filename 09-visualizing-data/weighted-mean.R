library(tidyverse)
library(here)

# import the data sets
stock_returns <- read.csv(here("data", "stock-returns.csv"))
stock_returns <- as_tibble(stock_returns)
stock_returns

glimpse(stock_returns)

str(stock_returns)

colnames(stock_returns)


# ------------------------------------

w_mean <- weighted.mean(stock_returns$Return, stock_returns$Likelihood) * 100
w_mean
print(paste("weighted mean: ", w_mean))


 
# # -------------------  ------------------

values <- c(0.3, 0.45, 0.25)
returns <- c(0.25, -0.12, 0.04)

# weighted_mean <- weighted.mean(values, returns)
weighted_mean <- weighted.mean(returns, values)
print(paste("weighted mean: ", weighted_mean))



# # -------------------  ------------------

# wt <- c(5,  5,  4,  1)/15
# x <- c(3.7,3.3,3.5,2.8)
# xm <- weighted.mean(x, wt)
# xm
 
# # ---------------  ----------------
# 
# 
# 
# # ---------------  ----------------
# rug(iris$Petal.Length)
# 
# 
# # --------------- relative frequency (more advanced) ----------------
# h <- hist(iris$Petal.Length, plot=FALSE)
# h$density = h$counts/sum(h$counts) * 100
# plot(h, main="Distribution of Petal Length",
#      xlab="Lengh ($K)",
#      ylab="Percent",
#      col="orangered",
#      freq=FALSE)
# 
# 
# # --------------- using ggplot ----------------
# histo <- ggplot(data=iris) 
# histo +  geom_histogram(mapping = aes(x = Petal.Length), bins = 10, fill = "steelblue") +
#   ggtitle("Distribution of Petal Length") + xlab("Length")
# 
# 
# # ----------------------------- Note ------------------------------------------------------
# # mapping=aes(x=Salary, y=..count..)  ## no change: y=..count.. is default`
# # mapping=aes(x=Salary, y=..density..)  ## shows density, as above in hist()`
# # mapping=aes(x=Salary, y=..count../sum(..count..)*100)  ## shows relative frequency`
# # ----------------------------------------------------------------------------------------------
# 
# # --------------- using ggplot - relative frequency ----------------
# histo <- ggplot(data=iris) 
# histo +  
#   geom_histogram(mapping=aes(x=Petal.Length, y=after_stat(count)/sum(after_stat(count)*100), 
#                  bins=10, fill = "steelblue")) + 
#   ggtitle("Distribution of Petal Length") + xlab("Length")
# 
