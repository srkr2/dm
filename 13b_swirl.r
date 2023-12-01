library(swirl)
library(dplyr)

install_course("Getting and Cleaning Data")
swirl()


names <- letters[1:5]
ages <- c(22,21,24,25,20)
marks <- c(25,25,27,28,24)
df <- data.frame(names,ages,marks,stringsAsFactors = FALSE)

tb <- tbl_df(df)
rm("df")
tb

select(tb,names,marks)

filter(tb,marks > 25)

arrange(tb,marks)

mutate(tb,percentage = (marks/30)*100)

summarize(tb,avg_marks = mean(marks))
