# Load the two data sets into R: "skew_1.csv", and "skew_2.csv".

skew_1 <- read.csv("skew-1.csv", stringsAsFactors = FALSE)
skew_1 <- as_tibble(skew_1)
str(skew_1)
summary(skew_1)

skew_2 <- read.csv("skew-2.csv", stringsAsFactors = FALSE)
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