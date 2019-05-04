#VECTORS----
#03.05.2019

library(dslabs)

# Using names to combine vectors

# Associate the cost values with its corresponding food item
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# You already wrote this code
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values with its corresponding city
names(temp) <- city

#subsetting vectors----

# cost of the last 3 items in our food list:
cost[3:5]

# temperatures of the first three cities in the list:

temp[1:3]

# Access the cost of pizza and pasta from our food list 
cost[c(1,5)]

# Define temp
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Access the temperatures of Paris and San Juan

temp[c(3,5)]

# Create a vector m of integers that starts at 32 and ends at 99.
m <- 32:99

# Determine the length of object m.
length(m)

# Create a vector x of integers that starts 12 and ends at 73.

x <- 12:73

# Determine the length of object x.

length(x)

# Create a vector with the multiples of 7, smaller than 50.
seq(7, 49, 7) 

# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order

seq(1, 99, 2)

# We can a vector with the multiples of 7, smaller than 50 like this 
seq(7, 49, 7) 

# But note that the second argument does not need to be last number.
# It simply determines the maximum value permitted.
# so the following line of code produces the same vector as seq(7, 49, 7)
seq(7, 50, 7)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length

length(seq(6, 55, 4/7))

#length out - determins the number of values in the sequence

# Store the sequence in the object a

a <- seq(1, 10, length.out  = 100)

# Determine the class of a

class(a)

#intergers and numberic - intergers take up less memory (that's the 
#only difference)

#coercion----

# Define the vector x
x <- c(1, 3, 5,"a")

# Note that the x is character vector
x

# Typecast the vector to get an integer vector
# You will get a warning but that is ok

as.numeric(x) -> x

#SORTING----

# Access the `state` variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states) 

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop

pop <- murders$population

# Sort the object and save it in the same object 

pop <- sort(pop)

# Report the smallest population size 

pop[1]

#indexing----

# Access population from the dataset and store it in pop

pop <- murders$population

# Use the command order, to order pop and store in object o

o <- order(pop)

# Find the index number of the entry with the smallest population size

o[1]

# Find the smallest value for variable total 
which.min(murders$total)

# Find the smallest value for population

which.min(murders$population)

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states

states <- murders$state

# Use the index you just defined to find the state with the smallest population

states[i]

#ranks ----

# Define a variable states to be the state names 

states <- murders$state

# Define a variable ranks to determine the population size ranks 

ranks <- rank(murders$population)

# Create a data frame my_df with the state name and its rank

my_df <- data.frame(states, ranks)

# Define a variable states to be the state names from the murders data frame

states <- murders$state

# Define a variable ranks to determine the population size ranks 

ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values

ind <- order(murders$population)

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 

my_df <- data.frame(states[ind], ranks[ind])

#NAs----

# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Use is.na to create a logical index ind that tells which entries are NA

ind <- is.na(na_example)

# Determine how many NA ind has using the sum function

sum(ind)

# removing NAs or excluding from analysis ----

# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# Create the ind vector
library(dslabs)
data(na_example)
ind <- is.na(na_example)

# We saw that this gives an NA
mean(na_example)

# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])



