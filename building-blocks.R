# --------------- creating an object ----------------

1+2

10-2

3*4

27/3

3+3*7-1

# creating sequence of numbers
10:20

result <- 2+3
print(c("The result of 2 and 3 is ", result, "cool"))

#object_name <- value
bob <- 7

bob*2

print(bob)


a <- 1:10


print(a)

a*2

print(a*2)

is.vector(a)

print(is.vector(a))

typeof(a)

ls()

courseName <- "R for data science"

ls()

typeof(courseName)

heights <-  c(11.5200, 12.4800, 12.3778, 12.7300, 12.4440, 13.6024)


print(typeof(heights))


print(heights)


# x <- c(2, 3, 5, 7, 11)
# 
# print(typeof(x))
# 
# print(x)


ls()

height_above = heights > 12

print(height_above)

print(typeof(height_above))



ls()




course_name <- c("R", "101")


print(typeof(course_name))


print(course_name)


#check if my_data exists
#exists('course_name')


mixed <- c("characters", TRUE, 1)

#print(mixed)

print(typeof(mixed))

print(a)

mean(a)

print(mean(a))


round(mean(a))


print(round(mean(a)))


mean_a <- mean(a)

print(mean_a)

args(round)


# -------------  building a function
deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")

print(deck)


hand <- sample(deck, 3, replace = TRUE)
print(hand)


draw <- function(){
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, 3, replace = TRUE)
  print(hand)
}


draw()
