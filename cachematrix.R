  #In the makeCacheMatrix function, we create and 
# save values and functions in the parent environment

makeCacheMatrix <- function(x = matrix()) {
  #If it has a value equal to null
  i <<- NULL
  set <- function(y) 
  {
  x <<- y
  i <<- NULL
  }
  
get <- function() x

setinverse <- function(inverse) i <<- inverse

getinverse <- function() i

list(set = set , get = get, setinverse = setinverse , getinverse = getinverse)

}
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
