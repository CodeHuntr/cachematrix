## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the function can cache the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
            x <<- y
            inv <<- NULL
        }
        get <- function() x
          setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
        

}



## Write a short comment describing this function

## this functions finds value of inverse of the the matrix that we created above.
## if the inverse already exists, then it just take the cache values.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if (!is.null(inv)) {
       message("getting cached data")
       return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
