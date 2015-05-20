## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ##              1. get the matrix
        ##              2. set the matrix
        ##              3. get the inverse
        ##              4. set the inverse 
  IN <- NULL
  set <- function(y) {
    
    x <<- y
    IN <<- NULL
  }
  get = function() x
  setinvverse = function(inverse) IN <<- inverse 
  getinverse = function() IN
  list(set=set, get=get, setinvverse=setinvverse, getinverse=getinverse)
}
# This function returns the inverse of the matrix and first checks if
# the inverse has already been computed. If so, it returns the result does not do it.
#. If not, the inverse is computed.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
  IN = x$getinverse()
    
  if (!is.null(IN)){
    
    message("getting cached data")
    return(IN)
  }
    
  matdata <- x$get()
  IN <- solve(matdata, ...)
  
    x$setinvverse(IN)
  
  IN
}
