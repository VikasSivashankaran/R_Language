thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray


multiarray[2, 3, 2]
multiarray[c(1),,1]
multiarray[,c(1),1]
2 %in% multiarray
dim(multiarray)
length(multiarray)
for(x in multiarray){
  print(x)
}

