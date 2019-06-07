#Sue Wallace 
#7.6.2019

#Libraries----

library(tidyverse)
library(dslabs)
library(ggthemes)
library(ggrepel)

#Cheatsheet
#https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

data(murders)

# class

data(heights)
data(murders)
p <- ggplot(murders)

class(p)

## Fill in the blanks
murders %>% ggplot(aes(x = population, y =total )) +
  geom_point()

names(murders)

#add a label to the aes ----

## edit the next line to add the label

murders %>% 
  ggplot(aes(population, total , label = abb)) + geom_label()

# adding colour----

murders %>% ggplot(aes(population, total, label= abb)) +
  geom_label(color = "blue") #this changes all points to blue

## colour is called within the aes this time in order to map a region

murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()

# Adding a scale----

p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) + geom_label()
## add layers to p here

p +
  scale_x_log10() +
  scale_y_log10()

#add a title

p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
# add a layer to add title to the next line
p + scale_x_log10() + 
  scale_y_log10() +
  ggtitle("Gun murder data")

# Histograms----

data(heights)

# define p here
p <- heights %>%
  ggplot(aes(height))+
  geom_histogram()

# add a binwidth

p <- heights %>% 
  ggplot(aes(height))
## add the geom_histogram layer but with the requested argument

p + geom_histogram (binwidth = 1)

# density plot

## add the correct layer using +
heights %>% 
  ggplot(aes(height)) +
  geom_density ()

#grouping----

## add the group argument then a layer with +
heights %>% 
  ggplot(aes(height, group = sex)) +
  geom_density ()

names(heights)

# using colour to group rather than group itself

## edit the next line to use color instead of group then add a density layer
heights %>% 
  ggplot(aes(height, color = sex)) +
  geom_density ()

# Using #alpha' sp that colours don't overlap

#without alpha

heights %>% 
  ggplot(aes(height)) + 
  geom_density(alpha = 0.2)

#with alpha

heights %>% 
  ggplot(aes(height, fill = sex)) + 
  geom_density(alpha = 0.2)
