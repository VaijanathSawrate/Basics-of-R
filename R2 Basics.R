x = 8

## if else statement
if (x  == 0){
  print("x i zero")
}else if(x > 0 ){
  print("x is positive.")
}else{
  print("x is Negative.")
}

## Another way to write if else statement.
ifelse(x %% 2 == 0, "even","odd")

## For more than two conditions
client <- c("private", "public", "other", "private")
VAT <- ifelse(client == "private", 1.12, ifelse(client == "public", 2.12, 3.12))
VAT

## Loops in R
## While loop
i <- 1
while(i < 6) {
  print(i)
  i = i + 1
  }
## Repeat
v <- c("Hello")
cnt = 3
repeat{
  print(v)
  cnt = cnt + 1
  
  if (cnt > 5) {
    break
  }
}

## For loop
v <- LETTERS[1:4]
v
for (i in v){
  print(i)
}

for (i in 1:length(v)){
  print(v[i])
}

## Loop control statements
## Break statements = terminate the loop statement and transfers execution

v <- c("Hello", "loop")
cnt <- 2

repeat{
  print(v)
  cnt = cnt + 1
  
  if (cnt > 5){
    break
  }
}

## next statement useful when we want to skip the current iteration of a loop 

v <- LETTERS[1:6]
for (i in v){
  
  if(i == "D"){
    next
  }
  print(i)
}

## Functions
## User defined functions

function_name <- function(arg_1, arg_2, ...){
  function body
}
## After defining the function, call the function.

new.function <- function(a=5){          ## Bydefault it takes a=5
  for (i in 1:a){
    b <- i^2
    print(b)
  }
}
new.function(5)
new.function(10)
new.function()

## Calling function without an argument
function_1 <- function(){
  for(i in 1:10){
    print(i^2)
  }
}

## Calling function with Default argument
func_2 <- function(a=2, b=3){
  result = a * b
  print(result)
}
func_2(4, 9)
func_2()


## Lazy evaluation of function
## Create a function with arguments.
new.function <- function(a, b){
  print(a^2)
  print(a)
  print(b^3)
  print(b)
}
new.function(3,9)

## Mode in R
mysamples <- c(29, 4, 5, 7, 29, 19, 29, 13, 25, 19)
mean(mysamples)
median(mysamples)
mode(mysamples)

library(modeest)
install.packages(modeest)
## install package modeest and then use below command find out mode of given sample
mlv(mysamples, method = "mfv")

## Importing dataset
#################################################################################

data <- read.csv(file.choose())
View(data)
summary(data)
data

