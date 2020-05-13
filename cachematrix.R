## Put comments here that give an overall description of what your
## functions do

## The following function creates a matrix and gives us the value of inversion.

makeCacheMatrix <- function(x = matrix()) {
    m < NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) m <<- inverse
    getinv <- function() m
    list(set = set,
         get = get,
         setinv = setinv,
         getinv = getinv)

}


## The second function first checks whether the inverse of the matrix has already been calculated and if it is,
## then gets the inverse from cached data. If inverse is not previously calculated then it solves the matrix to 
## give us the inverse

cacheSolve <- function(x, ...) {
    m <- x$getinv()
    if(!is.null(m)){
        message("Getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
