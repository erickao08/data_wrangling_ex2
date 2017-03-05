#read profile
library(readxl)
library(dplyr)
titanic_original<-read_excel('titanic3.xls')
titanic<-tbl_df(titanic_original)
View(titanic)
structure(titanic)

#emabark missing value
titanic$embarked[is.na(titanic$embarked)]<-'S'
