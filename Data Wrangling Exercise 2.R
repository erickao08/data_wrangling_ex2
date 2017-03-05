#read profile
library(dplyr)
refine<-read.csv('refine_original.csv')
refine_df<-tbl_df(refine)
View(refine_df)
structure(refine_df)