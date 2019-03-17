## The first fucntion contains 4 functions that are used to assign, exract the values

## It has 4 functions, set is used to set the value of x(matrix), 
##get is used to get the matrix, setinverse is used to set the value of i(inverse of matrix)
##getinverse is used to get the value of i

makeCacheMatrix <- function(x = matrix()) {
   i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## This fucntion takes the input matrix, checks the value of its inverse in the cache,
## if it is there, it prints the inverse, if it is not there it calculates the same
## and stores it and also prints it
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

