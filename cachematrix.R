## Programming Assignment #2

## creates a special type of matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function (y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function() x
    
    setinverse <- function(inverse) inv <<-inverse
    getinverse <- function() inv
    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Computes the inverse of a matrix created by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if (!is.null(inv)) {
        message("getting cached data")
        return (m)
    }
    data <- x$get()
    inv <- solve(data,...)
    x$setinverse(inv)
    inv
}
