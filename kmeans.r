data("iris")

result <- kmeans(iris[1:4],3)

result$cluster
result$withinss
result$centers

plot(Sepal.Length ~ Sepal.Width,data = iris,col = result$cluster)
