##################################################
## Project: 5minutes2explain
## Script purpose: Read other files
## Date: 09/07/2017
## Author: Flávio Brito
##################################################

## Section: set file path
##################################################
setwd("~/5minutes2explain")


## Section: Reading Microsoft Excel data file
##################################################
#You'll need to install xlsx package
#install.packages("xlsx", repos = "http://cran.us.r-project.org")

#load library
library(xlsx)
file <- "data/dt_sample.xlsx"
sh_Name <- "Data"
data_from_excel <- read.xlsx(file,sheetName = sh_Name) # 1 is the first sheet

## Section: Writing Microsoft Excel data file
##################################################
out <- write.xlsx(x = data_from_excel, file="data/dt_sample_out.xlsx", sheetName = "New", showNA = FALSE, row.names = FALSE)


## Section: Reading SAS data file
##################################################
#install.packages("haven")
library(haven)

file_name <- "data/iris.sas7bdat"
data_SAS <- read_sas(data_file = file_name)



## Section: Reading SPSS data file
##################################################
#install.packages("haven")
#library(haven)

file_name <- "data/iris.sav"
data_SPSS <- read_spss(file=file_name)

