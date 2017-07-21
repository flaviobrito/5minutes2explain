##################################################
## Project: 5minutes2explain
## Script purpose: Data manipulation using dplyr
## Author: Flávio Brito
##################################################

#Install packages
#install.packages("dplyr")

#load libraries
library(dplyr)


## Section: Using the filter() function 
##################################################

filter(iris, Sepal.Length >= 5)

filter(iris, Petal.Width == 0.3)

filter(iris, 
        Sepal.Length >= 5 & 
        Petal.Width == 0.3)


df_f <- filter(iris, 
                Sepal.Length >= 5 & 
                Petal.Width==0.3)

select(df_f, 
       (Petal.Length:Species)
       ) # We would like to use only Petal.Length Petal.Width Species variables from df_f (data frame that was already filtered)
