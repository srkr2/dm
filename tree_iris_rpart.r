library("rpart")
data("iris")

ind <- sample(1:nrow(iris),nrow(iris)*0.7)
train_data <- iris[ind,]
test_data <- iris[-ind,]

tree <- rpart(Species ~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = train_data)
par(xpd= NA)
plot(tree)
text(tree,digits = 1)
