# --------------- creating data frame ----------------

title <- c("Star Wars", "The Empire Strikes Back", "Return of the Jedi",
           "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
           "The Force Awakens")

year <- c(1977, 1980, 1983, 1999, 2002, 2005, 2015)

length_min <- c(121, 124, 133, 133, 142, 149, 135)

box_office_mil <- c(787, 534, 572, 1027, 657, 849, 2059)

my_df <- data.frame(title, year, length_min, box_office_mil)
my_df

names(my_df) <- c("movie_title", "release_year", "length_in_minutes", "box_office")
my_df


str(my_df)

#------------------------- tidyverse package -------------------

install.packages("tidyverse")


#------------------- import data --------------------------------

# working directory
getwd()

my_pok <- read.table("pokRdex-comma.csv", sep=',', header = TRUE, stringsAsFactors = FALSE)
my_pok




#----------------------- import csv file -------------------

my_pok <- read.csv("pokRdex-comma.csv", stringsAsFactors = FALSE)
my_pok



#----------------- export file -------------------

my_df

write.csv(my_df, "my_first_file.csv", row.names = FALSE)



#--------------------- basic exploratory data analysis ------------------------

# nrow()
# ncol()
# rownames()
# colnames()
# str()
# summary()
# head()
# tail()

nrow(my_pok)
ncol(my_pok)


colnames(my_pok)

str(my_pok)

summary(my_pok)


# ------------- indexing and slicing a data frame ------------------------


library(tidyverse)
starwars

str(starwars)

my_starwars <- as.data.frame(starwars)
my_starwars


my_starwars <- my_starwars[, -(11:13)]
my_starwars

head(my_starwars)

tail(my_starwars)

my_starwars[3, "homeworld"]

my_starwars[3, ]


my_starwars[, 1]
str(my_starwars[, 1])

str(my_starwars[["name"]])

head(my_starwars$name)
str(head(my_starwars$name))

my_starwars["name"]
str(my_starwars["name"])

my_starwars[c(1:10), c("name", "height", "mass")]

#-------------- extending data frame -------------------

my_df

mark <- c(37.5, 34.75, 34.25, 0, 0, 0.75, 0)
carrie <- c(13.5, 22.75, 21.25, 0, 0, 0.5, 5.75)


my_df$MarkScreenTime <- mark
my_df$CarrieScreenTime <- carrie

my_df


my_df$MarkScreenTime <- NULL
my_df$CarrieScreenTime <- NULL

my_df


my_df[["MarkScreenTime"]] <- mark
my_df[["CarrieScreenTime"]] <- carrie

my_df


my_df$MarkScreenTime <- NULL
my_df$CarrieScreenTime <- NULL

my_df


my_df <- cbind(my_df, MarkScreenTime = mark, CarrieScreenTime = carrie)
my_df

rogueOne <- c("Rogue One", 2016, 133, 1051, 0, 0.25)
my_df <- rbind(my_df, rogueOne)
my_df


data()

# ---------------- ealing with missing data ---------------------

na_df <- c(NA, 1:10)
na_df

mean(na_df)


mean(na_df, na.rm = TRUE)

is.na(na_df)

any(is.na(na_df))

any(is.na(my_starwars[, c("name", "height", "mass")]))

head(my_starwars)

colnames(my_starwars)

head(my_starwars$name)

my_starwars["name"]


any(is.na(my_starwars$height))

my_starwars$height[is.na(my_starwars$height)] <- median(my_starwars$height, na.rm = T)
my_starwars

my_starwars["height"]