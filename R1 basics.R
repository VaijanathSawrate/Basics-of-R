## R Programming lectures(Basic)

getwd()

6+3
a=9+8
a
print(a)
print(9+8)
print("Welcome to R programming.")

help("data.frame")
8
a=9
class(a)
a <- c(1,2,3,4)
class(a)
b = TRUE
class(b)

c = c(1, 2, 3, 4, c(3, 2, 1))
c
c = c(3L, 5L, 7L, 5.99)
c
class(c)

d = c(3L, 5L, 7L, 5.99, 'basics')
d
print(d)

c
c[1:3]
x = c[c(1,4)]
x
class(x)
view(x)
View(x)
View(c)

h = list(4, 5, 8, 10, c(7, 9, 6, 3))
h
h[[5]][3]
h[[5]][2]

i = matrix(c(10, 20, 30, 20, 30, 40, 10, 20, 30), nrow =3, ncol=3, byrow = FALSE,
           dimnames = list(c('r1', 'r2', 'r3'), c('c1', 'c2', 'c3')))
i
i[1]
i[1, 2]
i[1, 3]
i[2, 1]
i[2]
i[7]
i[2, 2]
i[3, 2]
j = array(c("R", "Programming", "Session" ), dim = c(3, 4,2))
j

k = c("red", "green", "blue", "blue", "red", "green", "red")
k
class(k)
length(k)
factor_k<- factor(k)
factor_k
class(factor_k)

m <- data.frame(gender = c("Male", "Male", "Female"), age = c(45, 54, 32), 
                weight = c(70, 60, 45), height = c(155, 160, 150))
m
print(m)
class(m)
length(m)
m[1]
m[1:3]
m[2:3][2,2]
m[2:3][1:2]

m$age
m$gender
m$height

m[c(2, 3), 2]
m
class(m[[2]])

ls()
ls(pattern = "m")
rm(b)
b
a


x = 5
if(x > 0){
  print("X is positive number")
}
x <- -5
if(x > 0){
  print("x is positive number")
}else{
  print("x is negative number")
}

