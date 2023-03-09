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


# ------------ slicing a matrix ---------------------

hp_mat[6,]

hp_mat[,2]

hp_subset <- hp_mat[c(1, 3, 7), ]
hp_subset


colnames(hp_mat) <- c("USA", "Worldwide") 
rownames(hp_mat) <- c("Hallows Part 2", "Sorcerer's Stone", "Hallows Part 1", 
                      "Order", "Prince", "Goblet", "Chamber", "Prisoner") 
hp_mat


hp_mat["Goblet", ]

hp_mat[, "USA"]


# ------------ matrix arithmetic ---------------------

b_office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
mat_mat <- matrix(b_office, nrow = 3, byrow = T,
                  dimnames = list(c("The Matrix", "Reloaded", "Revolutions"), 
                                  c("US", "Worldwide")))
mat_mat



mat_scaled <- mat_mat/1000
mat_scaled


avg_margin <- mat_mat - 121
avg_margin


budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2)
budget

margin <- mat_mat - budget
margin


mat_mat - c(63, 150, 150)

v <- matrix(1:6, nrow = 3)
v

multiplied <- mat_mat * v
multiplied

id <- matrix(c(1, 0, 0, 0, 1, 0, 0, 0, 1), nrow = 3, ncol = 3)
id

A <- matrix(c(1, 3, 2, 4), nrow = 2, ncol = 2)
A

B <- matrix(c(2, 1, 0, 2), nrow = 2, ncol = 2)
B

mul_res = B * A
mul_res


# ------------ matrix operations ---------------------

 
# b_office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
# mat_mat <- matrix(b_office, nrow = 3, byrow = T,
#                   dimnames = list(c("The Matrix", "Reloaded", "Revolutions"), 
#                                   c("US", "Worldwide")))
# mat_mat


col_totals <- colSums(mat_mat)
col_totals


row_totals <- rowSums(mat_mat)
row_totals


col_means <- colMeans(mat_mat)
col_means


row_mean <- rowMeans(mat_mat)
row_mean

mat_prelim <- rbind(mat_mat, col_totals, col_means)
mat_prelim



