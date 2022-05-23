  #In the makeCacheMatrix function, we create and 
# save values and functions in the parent environment

makeCacheMatrix <- function(x = matrix()) {
  #If it has a value equal to null
  i <<- NULL
  
get <- function() x

setinverse <- function(inverse) i <<- inverse

getinverse <- function() i

 set <- function(y) 
  {
  x <<- y
  i <<- NULL
  }
  
list(set = set , get = get, setinverse = setinverse , getinverse = getinverse)

# Return the matrix to get the inverse of x 
#by clicking in the makeCacheMatrix function

cacheSolve <- function(x, ...)
{
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
