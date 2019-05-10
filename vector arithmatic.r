#Sue Wallace
#10.05.2018

#Vector arithmatic----

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values

temp <- (temp - 32)*5/9

# Create a data frame `city_temps` 

city_temps <- data.frame (name=city, temperature = temp)

# Define an object `x` with the numbers 1 through 100

x <- (1:100)

# Compute the sum 

sum(1/x^2)

# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate

murder_rate <- murders$total/murders$population*100000

# Calculate the average murder rate in the US 

mean(murder_rate)

#indexing----

#logical or index vectors

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 

low <- (murder_rate <1)

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Get the indices of entries that are below 1

which(low)

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Names of states with murder rates lower than 1

murders$state[low]

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 

ind <- (low & murders$region =="Northeast")

# Names of states in `ind`

murders$state[ind]

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000


# Compute average murder rate and store in avg using `mean` 
avg <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 

sum(murder_rate <avg)

#Match----

# Store the 3 abbreviations in abbs in a vector (remember that they are character vectors and need quotes)

abbs <- c("AK", "MI", "IA") 

# Match the abbs to the murders$abb and store in ind

ind <- match(abbs, murders$abb)

# Print state names from ind

murders$state[ind]

#%in%----

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)

abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame

abbs %in% murders$abb

# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which abbreviation are not actually part of the dataset and store in ind

ind <- which(!abbs%in%murders$abb)

# What are the entries of abbs that are not actual abbreviations

abbs[ind]

#data wrangling ----

#dplyr

#mutate----

library(dplyr)

# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes column named rate with the per 100,000 murder rates

murders %>%
  mutate(rate = murders$total/murders$population*100000) -> murders

# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks 
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest

murders %>%
  mutate(rank = rank(-rate)) -> murders

# Load dplyr
library(dplyr)

# Use select to only show state names and abbreviations from murders

murders %>%
  select(state, abb)

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates

murders %>%
  filter(rank <=5)

# Use filter to create a new data frame no_south

no_south <- murders %>%
  filter(region !="South")

# Use nrow() to calculate the number of rows

nrow(no_south)

# Create a new data frame called murders_nw with only the states from the northeast and the west

murders %>%
  filter (region %in% c("Northeast", "West")) -> murders_nw

# Number of states (rows) in this category 

nrow(murders_nw)

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 

my_states <- murders %>%
  filter(region %in% c("Northeast", "West")) %>%
  filter(rate <1)

# Use select to show only the state name, the murder rate and the rank

my_states %>%
  select(state, rate, rank)

# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line

murders %>%
  filter(region %in% c("Northeast", "West")) %>%
  filter(rate <1) %>%
  select(state, rate, rank)

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)

murders %>%
  mutate(rate = total/population*100000, rank = rank(-rate)) %>%
  filter(region %in% c("Northeast", "West"), rate <1) %>%
  select(state, rate, rank) -> my_states



