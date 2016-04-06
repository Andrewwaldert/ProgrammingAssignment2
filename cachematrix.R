## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function will create a Cache Marix with the follwing parameters: 

makeCacheMatrix <- function(x = matrix()) {

i <- NULL

# 1. set the value of the matrix 
    set <- function(y) {
        x <<- y
        i <<- NULL
        
    }
    # 2. get the value of the matrix 
    get <- function() x
    
    # 3. set the value of the inverse matrix 
    setinverse <- function(inv) i <<- inv
    
    # 4. get the value of the inverse matrix 
    getinverse <- function() i
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )
}

# Cache Solve 

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


# Example: 
Matrix <- makeCacheMatrix(matrix(c(5, 6, 7, 8) c(2, 2)))
cacheSolve(Matrix)

     [,1] [,2]
[1,]   -4  3.5
[2,]    3 -2.5


