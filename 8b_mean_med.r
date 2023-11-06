data <- c(23,1,2,3,3,1,3,NA,5,6)

print(mean(data,na.rm= TRUE))
print(median(data,na.rm=TRUE))

getmode <- function(x){
    y <- table(x)
    m <- names(y)[which.max(y)]
    return(m)
}
print(getmode(data))

print(IQR(data,na.rm= TRUE))
