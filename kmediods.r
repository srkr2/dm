library("cluster")
data("iris")

result <- pam(iris,3)
print(result)
table(result$cluster,iris$Species)

plot(result)