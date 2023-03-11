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






#-----------------------  -------------------



#-----------------  -------------------



#---------------------  ------------------------




# -------------  ------------------------


