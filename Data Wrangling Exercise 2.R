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

#It will change the distribution of the population; however it won't change the mean. 
#I think it's okay to use the mean to fill the null unless you're trying to get the mode. 


#boat missing value
titanic$boat[is.na(titanic$boat)]<-'None'

#cabin missing value
#I do not think it is necessary to fill the empty value here since at the time not everyone on the ship is rich enough to afford a cabin.
#Some might not have a cabin and filling the cabin number with a filled value will twist the fact. 

#has_cabin_number 
titanic$has_cabin_number[is.na(titanic$cabin)]<-0
titanic$has_cabin_number[!(is.na(titanic$cabin))]<-1


