library(tidyverse)

# # define paths to data sets
# directory_path <- file.path(dirname(dirname(getwd())))
# directory_path
# 
# file_path <- file.path(directory_path, "data", "")
# file_path
# 
# # import the data sets
# data <- read.csv(file_path, stringsAsFactors = FALSE)

scores <- c(2, 3, 3, 7, 8, 13, 15, 16, 17, 19, 20, 21, 21, 22, 25, 29, 31, 51, 55, 55, 56, 57, 57, 58, 58)
scores <- as_tibble(scores)

typeof(scores)
length(scores)
str(scores)

ggplot(scores, aes(scores)) + stat_ecdf(geom = "step")

#install.packages("agricolae")
library(agricolae)
data(growth)

#------------------ example 1 ---------------------
h <- graph.freq(growth$height,plot=FALSE)
points <- ogive.freq(h,col="red",frame=FALSE, 
                     xlab="Height", ylab="Accumulated relative frequency", main="ogive")
plot(points,type="b",pch=19,las=1,bty="l")


#------------------ example 2 ---------------------

data <- c(5, 6, 7, 8, 9, 12, 14, 16, 16, 17, 20, 22, 25, 30, 34, 35, 38, 41, 43, 45)

library(agricolae)


value_bins <- graph.freq(data, plot=FALSE)
values <- ogive.freq(value_bins, frame=FALSE)

plot(values, xlab='Values', ylab='Relative Cumulative Frequency',
     main='Ogive Chart', col='steelblue', type='b', pch=19, las=1, bty='l')

