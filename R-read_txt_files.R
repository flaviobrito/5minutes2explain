##################################################
## Project: 5minutes2explain
## Script purpose: Read text files
## Date: 09/07/2017
## Author: Flávio Brito
##################################################

## Section: set file path
##################################################
setwd("~/5minutes2explain")


## Section:
##################################################
data_B <- read.csv("data/data_B_TAB.txt", header=T, dec=".",sep="\t", row.names = "ID")

## Section:
##################################################
data_A <- read.csv2("data/data_A.csv",
                   header = TRUE,
                   dec = ".",
                   row.names = c("FLAVIO", "ANDREA", "GUILHERME", "HANNAH"),
                   col.names= c("EMP_ID", "DIG", "SALARY_GROSS"),
                   stringsAsFactors=TRUE)

## Section:
##################################################
dados <- read.csv(
  file = "https://raw.githubusercontent.com/flaviobrito/dataudit/master/dados/Hospital.csv",
  sep = ";",
  stringsAsFactors = FALSE,
  na.strings = c("", " ")
)  

