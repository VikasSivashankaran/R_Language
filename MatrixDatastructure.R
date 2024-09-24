# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
# Print the matrix
thismatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
thismatrix[1, 2]
# access whole row
thismatrix[2,]
# access whole column
thismatrix[,2]



thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix
thismatrix[c(1,2),]
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix[, c(1,2)]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
# Print the new matrix
newmatrix
newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
newmatrix




thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]
thismatrix
"apple" %in% thismatrix
#find number of rows and columns
dim(thismatrix)
length(thismatrix)
