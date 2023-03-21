library(tidyverse)

# # define paths to data sets
# directory_path <- file.path(dirname(dirname(getwd())))
# directory_path
# 
# file_path <- file.path(directory_path, "data", "summer-olympic-games.csv")
# file_path
# 
# # import the data sets
# summer_games <- read.csv(file_path, stringsAsFactors = FALSE)
# summer_games <- as_tibble(summer_games)
# summer_games
# str(summer_games)
# 
# 
# colnames(summer_games)


# ------------------- basic formatting ------------------
hist(iris$Petal.Length,
     main="Distribution of Petal Length",
     xlab="Petal Length",
     col="steelblue")



# ------------------- density instead of frequency ------------------
hist(iris$Petal.Length,
     main="Distribution of Petal Length",
     xlab="Petal Length",
     col="steelblue",
     freq=FALSE)


# --------------- density instead of frequency (adding a kernel density line) ----------------
lines(density(iris$Petal.Length))


# --------------- adding a rug ----------------
rug(iris$Petal.Length)


# --------------- relative frequency (more advanced) ----------------
h <- hist(iris$Petal.Length, plot=FALSE)
h$density = h$counts/sum(h$counts) * 100
plot(h, main="Distribution of Petal Length",
     xlab="Lengh ($K)",
     ylab="Percent",
     col="orangered",
     freq=FALSE)


# --------------- using ggplot ----------------
histo <- ggplot(data=iris) 
histo +  geom_histogram(mapping = aes(x = Petal.Length), bins = 10, fill = "steelblue") +
  ggtitle("Distribution of Petal Length") + xlab("Length")


# ----------------------------- Note ------------------------------------------------------
# mapping=aes(x=Salary, y=..count..)  ## no change: y=..count.. is default`
# mapping=aes(x=Salary, y=..density..)  ## shows density, as above in hist()`
# mapping=aes(x=Salary, y=..count../sum(..count..)*100)  ## shows relative frequency`
# ----------------------------------------------------------------------------------------------

# --------------- using ggplot - relative frequency ----------------
histo <- ggplot(data=iris) 
histo +  
  geom_histogram(mapping=aes(x=Petal.Length, y=after_stat(count)/sum(after_stat(count)*100), 
                 bins=10, fill = "steelblue")) + 
  ggtitle("Distribution of Petal Length") + xlab("Length")

