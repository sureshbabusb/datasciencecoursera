## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  
  ##setinverse <- function(inv) i <<- inv
  
  ##getinverse <- function() i
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


getinverse <- function() {
  return(i)
}



setinverse <- function(inv) {
  i <<- inv
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
   i <<- getinverse()
  
  if (!is.null(i)) {
    return(i)
  }
  
  data <- solve(x)
  setinverse(data)
  i
  
}
