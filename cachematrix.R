## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
## Put comments here that give an overall description of what your
## functions do
## Creating R functions for time consuming tasks and storing it in cache.
## Write a short comment describing this function

## - first making a matrix and putting it in a  cache to retrieve later.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
                
        }
        get <- function() x
        setmatrix <- function(solve) i <<- solve
        getmatrix <- function() i
        list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
        
}

## Write a short comment describing this function
##  searches the cache for the matrix being passed, and if found , inverses retrieves 
## it and passes a message to user 
## If matrix not available, it inverses the matrix and then stores it in cache for
## future use

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getmatrix()
        if(!is.null(i)){
                message ("getting cached data")
                return (i)
        }      
        matrix <- x$get()
        i <- solve(matrix)
        x$setmatrix(i)
        i
        
}

