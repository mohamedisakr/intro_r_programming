#------------------ 1. Introduction to vectors ----------------
vec <- c(1,2,3)
vic <- c(11,12,13)

vec+vic

vic - vec

vec * vic 

vic/vec

mean(vec)

median(vic)

sd(vic)

sum(vic)

prod(vic)

min(vic)
max(vic)

#------------------ 2. Vector recycling ----------------
long_vec <- 1:10
short_vec <- 1:5

long_vec + short_vec
long_vec - short_vec
long_vec / short_vec
long_vec * short_vec

#------------------ 3. Vector attributes ----------------

age <- c(23, 26, 24, 26)

attributes(age)



names(age) <- c("Mohamed", "Omar", "Khaled", "Amr")

age

attributes(age)

names(age) <- NULL

names(age)


# ----------------- Slicing and indexing a vector -------------------

n.deck<-c(6,7,8,9,10)

deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")

deck[4]

deck[-4]

deck[c(1,3,5)]

names(n.deck) <- deck

n.deck

n.deck["Contessa"]

n.deck[c("Contessa", "Duke", "Captain")]

n.deck[1:2]

lv <- seq(10, 100, by=10)

lv[-(4:7)]

lv[lv > 30]


# ----------------------  Changing the dimensions of an object -----------------

a <- seq(10, 120, by = 10)

a 

dim(a) <- c(3, 4)

a

typeof(a)

class(a)




