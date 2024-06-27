## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

# Initialize the cache
    cache <- NULL
    
    # Function to set the matrix
    set <- function(matrix) {
        x <<- matrix
        cache <<- NULL

}

         # Function to get the matrix
    get <- function() x
    
    # Function to set the cached inverse
    setinverse <- function(inverse) {
        cache <<- inverse
    }
    
    # Function to get the cached inverse
    getinverse <- function() cache
    
    # Return a list containing the above functions
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

# cacheSolve function computes the inverse of the matrix using caching mechanism


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # Get the cached inverse if available
    inverse <- x$getinverse()
    
    # If the cached inverse exists, return it
    if (!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
}
 # Otherwise, compute the inverse
    data <- x$get()
    inverse <- solve(data, ...)
    
    # Cache the computed inverse
    x$setinverse(inverse)
    
    # Return the inverse
    inverse
}
