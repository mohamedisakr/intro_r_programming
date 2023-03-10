# --------------- relational operators ----------------

3==3

"cat" == "cat"

TRUE == TRUE

"sugar" != "salt"

TRUE != FALSE

17 > 21

"rat" > "cat"


TRUE > FALSE


5 >= 5


#------------------------- logical operators  -------------------

w = 9

w < 12

w > 6

(w > 6) & (w < 12)

!TRUE

!(10 < 9)


#------------------- logical operators & vectors -------------------------


v <- c(1, 3, 5, 7)
w <- c(1, 2, 3, 4)

3 == v


3 == w


12 > c(11, 11, 13, 14)


c(11, 12, 13) >= c(10, 12, 14)


v >= 3


v < 7


(v >= 3) & (v < 7)


(v >= 3) | (v < 7)



#----------------------- if else statement -------------------

lo <- 5
if(lo < 0) {
  print("Your number is negative")
} else {
  ("Your number is non-negative")
}


v <- 0

if(v < 0){
  print("The object was less than @, but I am working on it!")
  print("Wait for it...")
  
  v <- v * -1
  
  print("Your object is now positive. Check it out!")
  print(v)
} else if(v == 0){
  print("Your object is exactly zero")
} else if((v > 0) & (v < 12)){
  print("The object is positive and less than 12")
} else {
  print("Your object is positive, and larger than 12")
  print(v)
}



#----------------- more if else statement  -------------------

z <- c(1, 0, -3, 5)
w <- 6

if(z < 3) {
  print("less than 3")
}


z < 3

w = 8

if (w < 7){
  print("w is less than 7")
} else if(w == 6){
  print("w is precisely 6")
} else {
  print("w is more than 7")
}  
  
#--------------------- for loop ------------------------


numbers <- c(1, 2, 3, 4, 5) # c('One','Two',"Three","Four","Five")
# length(numbers)

num_holders <- vector(length = length(numbers))
for(i in numbers) {
  num_holders[i] <- numbers[i]
}

print(num_holders)



# ------------- while loop  ------------------------

i <- 1
while(i < 6) {
  print(paste("value", i))
  i <- i + 1
}


# ------------- repeat loop  ------------------------


i = -10
repeat {
  print(paste("value", i))
  i <- i + 1
  if(i >= 0) {
    print("i is 0 or more")
    print("loop exit")
    break
  }
} 


# ------------- building function  ------------------------

# draw <- function() {
#   deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
#   hand <- sample(deck, 3, replace = TRUE)
#   print(hand)
# }

coup = matrix(rep(c("Duke", "Assassin", "Captain", "Ambassador", "Contessa") , 3), ncol = 1)

deal = function(deck) {
  cards = deck[1:3, ]
  print(cards)
}

deal(deck = coup)

shuffle = function(deck, n) {
  random = sample(1:n, size = n)
  res_deck = deck[random, , drop = FALSE]
  print(res_deck)
}

shuffle(coup, 15)


# ------------- function scope  ------------------------


multi12 = function(x) {
  y = x * 12
  return(y)
}

multi12(3)

y = multi12(3)
print(y)


coup = matrix(rep(c("Duke", "Assassin", "Captain", "Ambassador", "Contessa") , 3), ncol = 1)


shuffle = function(deck) {
  random = sample(1:23, size = 23)
  res_deck = deck[random, , drop = FALSE]
  return (res_deck)
}


deal = function(deck = matrix(1:23, nrow = 23)) {
  shuffled_cards <- shuffle(deck)
  cards <- shuffled_cards[1:3, ]
  return (cards)
}

# deal(deck = coup)
deal()


