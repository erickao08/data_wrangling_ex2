#read profile
library(readxl)
library(dplyr)
titanic_original<-read_excel('titanic3.xls')
titanic<-tbl_df(titanic_original)
View(titanic)
structure(titanic)

#emabark missing value
titanic$embarked[is.na(titanic$embarked)]<-'S'


#age missing value
m<-mean(titanic$age,na.rm=TRUE)
titanic$age[is.na(titanic$age)]<-m
#it is okay to have the mean to fill up the null value. It will not effect the population distribution shape too much. 


#boat missing value
titanic$boat[is.na(titanic$boat)]<-'None'

#cabin missing value
#I do not think it is necessary to fill the empty value here since at the time not everyone on the ship is rich enough to afford a cabin. 
