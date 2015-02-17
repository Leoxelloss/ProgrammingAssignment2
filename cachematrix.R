## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will accept a matrix and store it in memory
## it will set the variable Y as the value if x$set() is called
## x will be returned when get is called
## setinverse will store the inverse value in memory
## getinverse will retrieve the stored value form memory
## the return functoin will be the list of stored value and its functions

makeCacheMatrix <- function(x = matrix()) {
  
  #set the value of the vector
  #get the value of the vector
  #set the value of the mean
  #get the value of the mean
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function
## this function will attempt to get the inverse value from memory
## if there is no data in memory it will proceed to inverse the matrix and store the resule in memory and return the inverse result
## if there is data found in memory, a message will be displayed and the stored data will be displayed
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      i <- x$getinverse()
      if(!is.null(i)) {
        message("getting cached data")
        return(i)
      }
      data <- x$get()
      i <- solve(data)
      x$setinverse(i)
      i
}
