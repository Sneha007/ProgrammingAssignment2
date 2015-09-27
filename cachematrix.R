## These functions will cache a matrix's inverse so that you don't have 
## to recompute it every time

## This function caches the matrix and can also get and set the inverse

makeCacheMatrix <- function(x = matrix()) {
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
             getmean = getinverse)

}


## This function calculates the inverse if it is not already calculated. 

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
	  
}






