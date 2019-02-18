##a function that creates a matrix then calcuates its inverse
#and stores it in a global varible called i
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse 
  getinverse <- function() i
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
#a function that looks at the global varible i 
#to see if it
#contains the 
#inverse matrix and returns it

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}