#library(tidyverse)
library("zeallot")

data <- c(3, 3, 7, 9, 13)
summary(data)

print(paste("range ", range(data, na.rm = TRUE)))
print(paste("iqr", IQR(data, na.rm = TRUE)))

c(mini, maxi) %<-% range(data)
maxi - mini

#------------ shifting (addition and subtraction) --------------------------------
data_shifting <- data + 6
summary(data_shifting)

print(paste("range ", range(data_shifting)))
print(paste("iqr", IQR(data_shifting)))

c(mini, maxi) %<-% range(data_shifting)
maxi - mini



#------------ scaling (multiplication and division) --------------------------------

data_scaling <- data * 2
summary(data_scaling)

print(paste("range ", range(data_scaling)))
print(paste("iqr", IQR(data_scaling)))

c(mini, maxi) %<-% range(data_scaling)
maxi - mini

library(DescTools)

mode_scaling <- mode(data_scaling)
str(mode_scaling)





