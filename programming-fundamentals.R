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



#-----------------  -------------------



#---------------------  ------------------------




# -------------   ------------------------



