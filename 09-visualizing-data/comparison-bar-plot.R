library(tidyverse)

# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

file_path <- file.path(directory_path, "data", "earnings.csv")
file_path

# import the data sets
earnings <- read.csv(file_path, stringsAsFactors = FALSE)
earnings <- as_tibble(earnings)


earnings

str(earnings)

colnames(earnings)


gathered <- earnings %>% gather(year, revenue, year_2014:year_2017)
gathered


gathered$year <- str_replace_all(gathered$year, "year_2014", "2014")
gathered$year <- str_replace_all(gathered$year, "year_2015", "2015")
gathered$year <- str_replace_all(gathered$year, "year_2016", "2016")
gathered$year <- str_replace_all(gathered$year, "year_2017", "2017")

# Create a bar chart for continent frequency
bar <- ggplot(gathered, aes(x = Month, y = revenue, fill = year))
bar + 
  geom_bar(stat="identity", position="dodge")
  labs(x = "\n Month", y = "Revenue\n", title = "\n Revenue By Year and Month \n") + 
    theme_light()
  
  
  # geom_bar(stat = "identity", position = position_dodge(), alpha = 0.75, fill = "steelblue") + 
  # geom_text(aes(label = revenue), fontface = "bold", vjust = 1.5, position = position_dodge(.9), size = 4) +

