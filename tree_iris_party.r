data("iris")
library("party")

ind <- sample(1:nrow(iris),nrow(iris)*0.7)
train_data <- iris[ind,]
test_data <- iris[-ind,]

tree <- ctree(Species ~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = train_data)
plot(tree)
