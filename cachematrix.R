## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Variable defines a matrix variable (inverse_matrix) which will store the cached value of inverse of the input matrix
## Defined setters and getters function for the input matrix 
#The last line creates a list of objects that refer to all 4 functions defined for the cached matrix. 
makeCacheMatrix <- function(x = matrix()) {
    inverse_matrix <- matrix()
    set <- function(y){
        x <<- y
        inverse_matrix <<- matrix()
    }
    get <- function() x
    setinverse <- function(solution) inverse_matrix <<- solution
    getinverse <- function() inverse_matrix
    list(get = get, set = set, getinverse = getinverse, setinverse = setinverse)
}


## Write a short comment describing this function
##Checks whether inverse of the matrix in argument is already calculated or not. If yes, then the cached value is returned and a message is printed.
##Else, the value of inverse is computed, cached and returned to the user.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if(!is.na(inverse)){
        message("getting cached value")
        return(inverse)
    }
    value <- x$get()
    inverse <- solve(value)
    x$setinverse(inverse)
    inverse
}
