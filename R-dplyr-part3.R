##################################################
## Project: 5minutes2explain
## Script purpose: Data manipulation using dplyr
## Author: Flávio Brito
##################################################
#Install packages
install.packages("dplyr")

#load libraries
library(dplyr)


## Section: Using the rename() function 
##################################################

new_iris <- rename(iris, 
                   Sepal_Length = Sepal.Length, 
                   Sepal_Width  = Sepal.Width)

str(new_iris)

## Section: Using the mutate() function 
##################################################
mutate(iris, 
       Sepal.Width_log = log(Sepal.Width) 
       ) 

## Section: Using the group_by() function to split 
##          data frame 
##################################################
chickwts_grouped <- group_by(chickwts, feed)


df_new<-group_by(chickwts,feed)

summarise(
  chickwts_grouped,
  weight_mean = mean(weight, na.rm = TRUE),
  weight_sd = sd(weight, na.rm = TRUE)
)

summarise(
  chickwts,
  weight_mean = mean(weight, na.rm = TRUE),
  weight_sd = sd(weight, na.rm = TRUE)
)









sample_n(chickwts_grouped,2)

group_by(chickwts, feed) %>% sample_n(2)

sample_n(chickwts,2)

levels(chickwts$feed)
