## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## 1. Set the matrix
  ## 2 . get the matrix
  ## 3. set the inverse
  ## 4. Get the inverse
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    # <<- is used to assign a value to an object in an envirnonment
    # different from the current environment
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse = function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m = x$getinverse()
  #If the value of the inverse is not null (has been calculated)
  if(!is.null(m))  {
    message("Returning cached matrix")
    return(m)

  }
  inv_matrix.data = x$get()
  m = solve(inv_matrix.data, ...)
  x$setinverse(m)
  return(m)

  }


