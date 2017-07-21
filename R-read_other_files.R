##################################################
## Project: 5minutes2explain
## Script purpose: Read other files
## Author: Flávio Brito
##################################################

## Section: set file path
##################################################
setwd("~/5minutes2explain")


## Section: Reading Microsoft Excel data file
##################################################
install.packages("readxl")

#load library
library(readxl)
file <- "data/dt_sample.xlsx"
sh_Name <- "Data"
data_from_excel <- read_excel(file,sheet = sh_Name) # 1 is the first sheet

## Section: Writing Microsoft Excel data file
##################################################
library(xlsx)
file_name <- "data/dt_sample_out.xlsx"
sh_Name <- "New"
out <- write.xlsx(data_from_excel, file=file_name, sheetName = sh_Name)


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

