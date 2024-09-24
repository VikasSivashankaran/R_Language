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


#recursion

tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)