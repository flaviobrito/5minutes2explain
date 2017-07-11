##################################################
## Project: 5minutes2explain
## Script purpose: Read text files
## Date: 09/07/2017
## Author: Flávio Brito
##################################################

## Section: set file path
##################################################
setwd("~/5minutes2explain")


## Section: tab sep
##################################################
file_name <- "data/data_B_TAB.txt"
data_B <- read.csv(file_name,       #the name of the file
                   header=TRUE,     #the file contains the variables' names as its 1st line
                   dec=".",         #decimal points  --> .
                   sep="\t",        #the field separator character --> tab
                   row.names = "ID")#variable which contains the row names 


## Section: Read text file from Web
##          different missing values 
##################################################
file_url <- "https://github.com/flaviobrito/5minutes2explain/raw/master/data/data_A.csv"
data_A <- read.csv(
                  file = file_url,#the name of the file
                  sep = ",",      #the field separator character --> comma
                  header = TRUE,  #file has variable header 
                  stringsAsFactors = FALSE,#character vectors be converted to factors
                  na.strings = c("", " ") #vector of strings --> NA values
                )  


## Section: Alter columns names, create row names
##################################################
file_name <- "data/data_A.csv"
data_A_new <- read.csv2(file_name,
                    header = TRUE,
                    dec = ".",
                    sep=",",
                    row.names = c("Employee_A", "Employee_B", "Employee_C", "Employee_D"),
                    col.names= c("EMP_ID", "DIG", "SALARY_GROSS"),
                    stringsAsFactors=TRUE)
