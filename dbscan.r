data("iris")
library("fpc")

result <- dbscan(iris[1:4],eps = 0.42,MinPts = 5)
print(result)

plot(result,iris[,c(1,4)])
