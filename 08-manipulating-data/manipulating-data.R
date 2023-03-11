# --------------- data transformation using Dplyr package ----------------

library(tidyverse)

star <- starwars

view(star)

filter(star, species == "Droid")

filter(star, species == "Droid", homeworld == "Tatooine")

filter(star, eye_color == "red" | eye_color == "yellow" | eye_color == "orange", species == "Human" )

colnames(star)

select(star, name, birth_year, sex, gender)

select(star, name, homeworld:starships)

select(star, ends_with("color"))

select(star, name, vehicles, starships, everything())

star <- mutate(star, bmi = mass/((height/100)^2))
select(star, name:bmi)

star_trans <- transmute(star, bmi = mass/((height/100)^2))
star_trans

arrange(star, mass)

arrange(star, desc(mass))

summarize(star, avg_height = mean(height, na.rm = T))

star_species <- group_by(star, species)
summarize(star_species, avg_height = mean(height, na.rm = T))

#-------------------------  -------------------




#-------------------  --------------------------------





#-----------------------  -------------------






#-----------------  -------------------




#---------------------  ------------------------




# -------------  ------------------------




#--------------  -------------------



# ----------------  ---------------------

