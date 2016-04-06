## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function will create a Cache Marix with the follwing parameters: 
# 1. set the value of the matrix 
# 2. get the value of the matrix 

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) i <<- inv
    getinverse <- function() i
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )
}


## Write a short comment describing this function

# 1. set the value of the inverse matrix 
# 2. get the value of the inverse matrix 

cacheSolve <- function(x, ...) {
       i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)
    i
}
