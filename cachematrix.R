## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Objects get saved to environment
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverm <- function(inverm) m <<- inverm
  getinverm <- function() m
  list(set = set, get = get,
       setinverm = setinverm,
       getinverm = getinverm)
}


## Write a short comment describing this function
## Inverted matrix is calculated

cacheSolve <- function(x, ...) {
  m <- x$getinverm()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverm(m)
  m
}
        ## Return a matrix that is the inverse of 'x'
