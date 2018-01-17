## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The vector contains two different types, so it converts
# my.num into a String. You cannot find the sum of two Strings.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# You have to load the package with the library() function
# like library(stringr)

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The variable you created was called initials, not initial


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector1 <- c("Madison", "Laughlin")
typeof(vector1)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
vector2 <- c("Hilary", "Rodham", "Clinton")
CompareFunctions <- function(v1, v2) {
  differenceLength <- length(v1) - length(v2)
  result <- paste("The difference in lengths is ", differenceLength)
  return(result)
}

# Pass two vectors of different length to your `CompareLength` function
CompareFunctions(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  differenceLength <- length(v1) - length(v2)
  if(differenceLength < 0) {
    return(paste("Your second vector is longer by ", -differenceLength, " elements."))
  } else {
    return(paste("Your first vector is longer by ", differenceLength, " elements."))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vector1, vector2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  v4 <- c(v1[1:length(v1)], v2[1:length(v2)], v3[1:length(v3)])
  return(v4)
}
# Send 3 vectors to your function to test it.
vector3 <- c("Donald", "Trump")
vector4 <- CombineVectors(vector1, vector2, vector3)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(v1) {
  v1 <- tolower(v1[1:length(v1)])
  return(v1)
}
CapsTime(vector1)
