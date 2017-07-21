##################################################
## Project: 5minutes2explain
## Script purpose: Data manipulation using dplyr
## Author: Flávio Brito
##################################################

#Install packages
#install.packages("dplyr")

#load libraries
library(dplyr)

##################################################
data(iris) #load data set

str(iris) #show the df structure

names(iris) #list column names


## Section: Using the select() function
##################################################

select(iris, (Sepal.Length:Species)) #specify column from Sepal.Length to Species

select(iris,-(Petal.Length:Species)) # minus signal indicates that we want to ignore                                            variables from Petal.Length to Species)

select(iris, starts_with("Sepal"))#select data from columns that starts with "Sepal" string

select(iris, ends_with("Length")) #select data from columns that ends with "Length" string

