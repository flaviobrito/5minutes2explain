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
data_B <- read.csv("data/data_B_TAB.txt", header=T, dec=".",sep="\t", row.names = "ID")


## Section: Read text file from Web
##          different missing values 
##################################################
data_A <- read.csv(
  file = "https://github.com/flaviobrito/5minutes2explain/raw/master/data/data_A.csv",
  sep = ",",
  header = TRUE,
  stringsAsFactors = FALSE,
  na.strings = c("", " ")
)  


## Section: Alter columns names, create row names
##################################################
data_A_new <- read.csv2("data/data_A.csv",
                    header = TRUE,
                    dec = ".",
                    sep=",",
                    row.names = c("Employee_A", "Employee_B", "Employee_C", "Employee_D"),
                    col.names= c("EMP_ID", "DIG", "SALARY_GROSS"),
                    stringsAsFactors=TRUE)
