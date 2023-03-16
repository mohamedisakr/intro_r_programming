# define paths to data sets
directory_path <- file.path(dirname(dirname(getwd())))
directory_path

skew_1_file_path <- file.path(directory_path, "data", "skew-1.csv")
skew_1_file_path

skew_2_file_path <- file.path(directory_path, "data", "skew-2.csv")
skew_2_file_path

# import the data sets
# Load the two data sets into R: "skew_1.csv", and "skew_2.csv".
skew_1 <- read.csv(skew_1_file_path, stringsAsFactors = FALSE)
skew_1 <- as_tibble(skew_1)
str(skew_1)
summary(skew_1)

skew_2 <- read.csv(skew_2_file_path, stringsAsFactors = FALSE)
skew_2 <- as_tibble(skew_2)
str(skew_2)
summary(skew_2)



# Identify the skew of the data sets, both visually, and numerically. 
hist_skew1 <- ggplot(data = skew_1, aes(x = Dataset.1)) 
hist_skew1 + 
  geom_histogram(binwidth = 100, color = "darkslategray", fill = "darkslategray4",, alpha = 0.5) +
  theme_light() 



hist_skew2 <- ggplot(data = skew_2, aes(x = Dataset.2)) 
hist_skew2 + 
  geom_histogram(binwidth = 100, color = "darkslategray", fill = "darkslategray4",, alpha = 0.5) +
  theme_light() 



# Try to interpret what you are seeing.