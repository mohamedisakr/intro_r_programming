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


#------------ creating a matrix in a single line of code -------------

medals2 <- matrix(c(16, 8, 13, 37, 12, 10, 5, 27, 9, 4, 2, 15, 8, 10, 7, 25, 8, 5, 5, 18),
                  nrow = 5, byrow = TRUE, 
                  dimnames = list(c("norway","germany","china","usa","sweden"),
                                  c("gold", "silver", "bronze", "total")))
medals2




# ------------ indexing an element from a matrix ---------------------

gross <- c(381, 1340, 318, 975, 396, 960, 292, 940, 302, 934, 290, 897, 262, 879, 249, 797) 
hp_mat <- matrix(gross, nrow = 8, byrow = T) 
hp_mat 

hp_mat[6,2]

hp_mat[6]

hp_mat[6,]

hp_mat[,2]








