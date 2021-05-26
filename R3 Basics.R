## Jion (Merge) dataframes (inner, outer, left, right)
df1 = data.frame(customerID = c(1:6), product = c(rep('Television', 3), rep('Radio', 3)))
View(df1)

df2 = data.frame(customerID = c(2,4,6,7), state = c(rep('California', 3), rep('Texas', 1)))
df2
df1

## Merging happens based on common column names in both datasets.
## Inner Join(common records)

df <- merge(x=df1, y=df2, by='customerID')
df

## Outer Join (Total records)
df <- merge(x=df1, y=df2, by='customerID', all = TRUE)
df

df <- merge(x=df1, y=df2, by='customerID', all.x = TRUE)
df

df <- merge(x=df1, y=df2, by='customerID', all.y = TRUE)
df
df <- merge(x=df1, y=df2, by='customerID', all.x = FALSE)
df
x <- c(8, 'Radio', 'California')
df2 <- rbind(df, x)    ## It is used to add row in dataframe
df2

## Left outer join
df <- merge(x=df1, y=df2, by='customerID', all.x = TRUE)
df

##Right outer join
df <- merge(x=df1, y=df2, by='customerID', all.y = TRUE)
df

## cross join
df <-merge(x=df1, y=df2, by = NULL)
df

###################################################################################
## iris dataset
data("iris")
view(iris)
View(iris)

## Apply functions
z = apply(iris[,1:4], 2, mean)
z
x = lapply(iris[,1:4], mean)
x

y = sapply(iris[,1:4],  mean)
y

# tapply
iris$Sepal.Length
attach(iris)
Sepal.Length
detach(iris)
Sepal.Length
is.vector(Sepal.Length)
tapply(Sepal.Length, Species, mean)
tapply(Sepal.Width, Species, median)

getwd() ### TO know the current working directory
setwd("C:/Users/LENOVO/Documents") # To set the working directory

data('mtcars')
View(mtcars)

mtcars$mpg
nrow(mtcars)
row.names(mtcars)
ncol(mtcars)
colnames(mtcars)
dim(mtcars)
dimnames(mtcars)

head(mtcars)
tail(mtcars)
head(mtcars, 10)

min(mtcars$mpg, na.rm = T)
max(mtcars$mpg)
mtcars$cyl = factor(mtcars$cyl)
mtcars$cyl
table(mtcars$mpg)

## Handy dplyr verb:
# Filter--> filter()
# Select--> select()
# Arrange--> arrange()
install.packages('dplyr')
library(dplyr)

mtcars[,c(2,10)] # Extracting all rows and 2 and 10 column

# filter(df, condition)
filter(mtcars, cyl==8)
filter(mtcars, cyl==8, gear == 5)
filter(mtcars, cyl==8 & gear == 5)
filter(mtcars, cyl==8 | gear == 5)

# select method
sel = select(mtcars,mpg,cyl,gear)
sel
filter(select(mtcars, mpg, cyl, gear), cyl == 4)
select(mtcars,carb, mpg:disp, gear)

# arrange(dataframe, orderby)
arrange(mtcars, cyl)
arrange(select(mtcars, cyl,gear), cyl )
arrange(select(mtcars, cyl,gear), cyl,gear )
arrange(select(mtcars, cyl,gear), cyl, desc(gear) )




