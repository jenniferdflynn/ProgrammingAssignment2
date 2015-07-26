## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  invs <- NULL
  set <- function(y) {  ##set value of the matrix
    x <<- y
    invs <<- NULL
  }
  get <- function() x  ##get value of matrix
  setInverse <- function(inverse) invs <<- inverse  ##set value of inverse
  getInverse <- function() invs  ##get value of inverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
## this function is used to set inverse values of a matrix and retrieve it
## if matrix inverse has been calculated then it is cached and referred to instead of recalculated


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
invs <- x$getInverse()
if(!is.null(invs)) {
  message("getting cached data")
  return(invs)
}
data <- x$get()
invs <- solve(data, ...)
x$setInverse(invs)
invs
}
