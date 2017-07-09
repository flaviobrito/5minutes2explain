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
install.packages("xlsx", repos = "http://cran.us.r-project.org")

#load library
library(xlsx)
file <- "data/dt_sample.xlsx"
sh_Name <- "Data"
data_from_excel <- read.xlsx(file,sheetName = sh_Name) # 1 is the first sheet
out <- write.xlsx(x = data_from_excel, file="data/dt_sample_out.xlsx", sheetName = "New", showNA = FALSE)

## Section: Reading SAS data file
##################################################
#you´ll need to install sas7bat
#install.packages("sas7bat")

library(sas7bdat)
data_SAS <- read.sas7bdat("data/orders.sas7bdat")


