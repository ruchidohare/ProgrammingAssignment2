## This function creates the list containing the functions to
## set and get the matrix and its inverse value

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
setMatrix <- function(matrix = matrix()) {
    x <<- matrix
  }
  getMatrix <- function() x
  setinverse <- function(inverseMatrix = matrix()){
    inverse <<- inverseMatrix
  }
  getinverse <- function() inverse
  list(set = setMatrix, get = getMatrix, setI = setinverse, getI = getinverse)
}

## cacheSolve function check for the inverse matrix in the cache
## If value is present, it fetch the values directly from the cache
## If not it computes the values ans set the value in the cache.

cacheSolve <- function(x, ...) {
  if (is.null(x$getI())) {
    print("not found in cache.calculating...")
    x$setI(solve(x$get()))
  }else
  {print("Found in cache")}
x$getI()
}
