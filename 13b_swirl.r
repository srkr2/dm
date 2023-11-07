install.packages("swirl")
library("swirl")
swirl()
install_course("Getting and Cleaning Data")
library('dplyr')


names <- c('kumar','sai','krishna','guna','harsha','phani','prudvi','ram','sam','sujith')
ages <- c(20,22,23,21,20,19,22,24,22,21)
salary <- c(22.2,34.9,44,40,35,32,33,22,25,30)
emp <- data.frame(names,ages,salary,stringsAsFactors = FALSE)

cran <- tbl_df(emp)
select(cran,names,salary)

filter(cran,salary > 30)

arrange(cran,ages)

mutate(cran, ageby10 = ages/10)

summarize(cran,avg_age=mean(ages))
