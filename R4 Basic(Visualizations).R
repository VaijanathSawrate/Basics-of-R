data('mtcars')
View(mtcars)
plot(mtcars$mpg, mtcars$disp)  # Relationship between variables scatterplot
plot(mtcars$mpg, mtcars$hp)

## Histogram (Univariate)
hist(mtcars$mpg)

# Boxplot (To identify outliers)
 boxplot(mtcars$hp)

install.packages('ggplot2') 
library(ggplot2) 
pairs(mtcars)
pairs(mtcars[,1:7])
             
      