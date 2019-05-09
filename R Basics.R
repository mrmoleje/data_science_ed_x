## R Basics
##Sue Wallace
##01/05/2019

#To see any values saved in the workspace

ls()

#Functions----

#There are several pre-defined functions in R. More can be added through
#packages

log(a)

# nested functions (a function within a function
#The functions are delivered from left to right

log(exp(1))

# help function

help("log")

# want to know the arguments of a function?

args(log)

help("+") #for help on arithmatic

#data sets in r

data()

#variable name have to start with a letter and shouldn't have spaces
#stick to lower case and use spaces instead of underscores

# assignment 1 ----

# Here is how you compute the sum for the first 20 integers
20*(20+1)/2 

# However, we can define a variable to use the formula for other values of n
n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Below, write code to calculate the sum of the first 100 integers

n <- 100

n*(n+1)/2

#Run the following code in the R console:
  
n <- 1000
x <- seq(1,n)
sum(x)

#seq creates a list of 1 to 1000, then sum adds those up.

#nested functions----
#a function withina function

# log to the base 2 
log2(16)

# sqrt of the log to the base 2 of 16:
sqrt(log2(16))

# Compute log to the base 10 (log10) of the sqrt of 100. Do not use variables.

log10(sqrt(100))

#data types ----

a <- 2

class(2)

#data frames (just like tables)

library(dslabs)

#str = structure

str(murders)

head(murders)

# accessor ($)

names(murders)

murders$population

#this preserves teh order of the rows in the data table

pop <- murders$population

length(pop)

class(pop)

#characters - use "" to diffentiate between variable names and values

class(murders$state)

#Logical vectors are either true or false

#factors

#these store catigorical data. This is more memory efficient
#can be confused with characters
#they should be avoided as much as possible - but are sometimes needed

class(murders$region)

levels(murders$region)

# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]] 

# We can confirm these two are the same
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign it to b

b <- murders[["abb"]]

# Check if `a` and `b` are identical 

identical(a,b)

#nested function

# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable

length(levels(murders$region))

#table function ----

# Here is an example of what the table function does
x <- c("a", "a", "b", "b", "b", "c")
table(x)

# Write one line of code to show the number of states per region

table(murders$region)

table(murders$state, murders$region)


