# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist

thislist[1]

thislist[1] <- "blackcurrant"
thislist
length(thislist)
############


thislist <- list("apple", "banana", "cherry")
append(thislist, "orange", after = 2)
newlist <- thislist[-1]
newlist
(thislist)[2:5]
for (x in thislist) {
  print(x)
}



##########

list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3

