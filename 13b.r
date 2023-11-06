install.packages("swirl")
library("swirl")
swirl()
install_course("Getting and Cleaning Data")
library('dplyr')
data("storms")
head(storms)
cran <- as_tibble(storms)

select(cran,name,year)

filter(cran,year>1975)

arrange(cran,lat)

cran1 <- select(cran,name:lat)
mutate(cran1, yearby10 = year/10)

summarize(cran,avg_year=mean(year))
