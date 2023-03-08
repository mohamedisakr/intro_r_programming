#--------------- 1 creating matrix ------------
# by using matrix function or by using rbind & cbind functions

m <- matrix(1:12,nrow = 3)
m


m <- matrix(1:12,ncol = 4)
m


m <- matrix(1:12,ncol = 4, byrow = TRUE)
m

norway <- c(16, 8, 13, 37)
germany <- c(12, 10, 5, 27)
china <- c(9, 4, 2, 15)
usa <- c(8, 10, 7, 25)


medals <- cbind(norway,germany,china,usa)
medals


rownames(medals) <- c("gold", "silver", "bronze", "total")
medals


medals <- t(medals)
medals


sweden <- c(8, 5, 5, 18)


medals <- rbind(medals, sweden)
medals


