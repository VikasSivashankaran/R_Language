my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)


##

txt <- "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()
paste("R is", txt)
