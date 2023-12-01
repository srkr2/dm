min_max_norm <- function(x){
  (x-min(x))/(max(x) - min(x))
}

iris_minmax <- as.data.frame(lapply(iris[1:4],min_max_norm))
iris_minmax$Species <- iris$Species
head(iris_minmax)

iris_zscore <- as.data.frame(lapply(iris[1:4],scale))
iris_zscore$Species <- iris$Species
head(iris_zscore)
