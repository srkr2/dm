data("mtcars")

model <- lm(mpg~disp+hp+wt,data = mtcars)
summary(model)

mpg_predicted <- predict(model,mtcars[,c('disp','hp','wt')])
plot(mpg~wt,data=mtcars,col= 'green')
points(mpg_predicted~wt,data=mtcars,col = 'red')
