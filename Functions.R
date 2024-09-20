my_function <- function() { 
  print("Hello World!")
}

my_function()
#aruguments
my_function <- function(fname) {
  paste(fname, "Test")
}
my_function("Hello")
my_function("World")
my_function("Peter")


#default parameters

my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function()

#functions returns a value

fun<- function(x){
  
}

my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))