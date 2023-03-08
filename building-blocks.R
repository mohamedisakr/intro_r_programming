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

#------------------------- data types (integers and doubles) -------------------
# 6 types of vectors (integer, double, character, logical, complex, raw)

is.vector(bob)

is.vector(a)

print(is.vector(a))

typeof(a)

b = c(5, 6, 7)

b = c(5L, 6L, 7L)

typeof(b)

ls()


#------------------- data types (characters and logicals)

1500*3.75


courseName <- "R for data analysis"

ls()

typeof(courseName)


course_toc <- "The course is consists of 12 sections"

typeof(course_toc)



course_name <- c("R", "101")

print(typeof(course_name))

print(course_name)



heights <-  c(11.5200, 12.4800, 12.3778, 12.7300, 12.4440, 13.6024)

print(heights)

print(typeof(heights))


height_above = heights > 12

print(height_above)

print(typeof(height_above))

ls()


#----------------------- coercion rules -------------------

# x <- c(2, 3, 5, 7, 11)
# 
# print(typeof(x))
# 
# print(x)

mixed <- c("characters", TRUE, 1)

#print(mixed)

print(typeof(mixed))

print(a)

ls()



#check if my_data exists
#exists('course_name')


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
