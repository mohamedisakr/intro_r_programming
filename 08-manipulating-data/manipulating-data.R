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


#------------------------- sampling data with dplyr -------------------


sample_n(star, 10)

sample_frac(star, 0.1)


#------------------- using the pipe operator --------------------------------

star_species <- group_by(star, species) 
star_summary <- summarise(star_species, count = n(), avg_mass = mean(mass, na.rm = T))
filter(star_summary, count > 1)


filter(summarise(group_by(star, species), count = n(), avg_mass = mean(mass, na.rm = T)), count > 1)

star_filtered <- star %>% 
  group_by(species) %>% 
  summarise(count = n(), avg_mass = mean(mass, na.rm = T)) %>% 
  filter(count > 1)

star_filtered


#----------------------- tidying data with gather & separate -------------------

# gather
# spread
# unite
# separate

billboard <- read.csv("billboard.csv")
billboard <- as.tibble(billboard)
str(billboard)

billboard_arranged <- billboard %>% 
  gather(x1st.week:x76th.week, key = "week", value = "rank", na.rm = T) %>%
  arrange(artist.inverted)

str(billboard_arranged)



tb <- read.csv("tb.csv")
tb <- as.tibble(tb)
str(tb)


tb_gathered <- tb %>% 
  gather(m.014:f.65, key = "column", value = "cases", na.rm = T) %>%
  arrange(country)
  
str(tb_gathered)
tb_gathered


tb_separated <- tb_gathered %>% separate(column, into = c("sex", "age")) # , sep = "."
tb_separated


tb_separated$age <- str_replace_all(tb_separated$age, "0", "0-") 
tb_separated$age <- str_replace_all(tb_separated$age, "15", "15-") 
tb_separated$age <- str_replace_all(tb_separated$age, "25", "25-") 
tb_separated$age <- str_replace_all(tb_separated$age, "35", "35-") 
tb_separated$age <- str_replace_all(tb_separated$age, "45", "45-") 
tb_separated$age <- str_replace_all(tb_separated$age, "55", "55-") 
tb_separated $age <- str_replace_all(tb_separated$age, "65", "65-100")

tb_separated

#--------------------- tidying data with unite & spread ------------------------


tb_separated <- tb_separated %>% separate(age, into = c("age_low", "age_high"))
tb_separated


tb_united <- tb_separated %>% unite("age_range", c("age_low", "age_high"), sep = "-")
tb_united


# str(weather_data)


weather_data <- read.csv("weather.csv")
weather_data <- as.tibble(weather_data)
str(weather_data)

weather_data



weather_spread <- spread(weather_data, key = element, value = value) 
weather_spread



