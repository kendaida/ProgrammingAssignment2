## Put comments here that give an overall description of what your
## functions do
#This functions cache the inverse of a matrix.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse_matrix <- NULL
    set <- function(y){
      x <<- y
      inverse_matrix <<- NULL
    }
    get <- function(){
      x
    }
    setinversion <- function(inverse){
        inverse_matrix <<- inverse
    }
    getinversion <- function(){
        inverse_matrix
    }
    
    
    list(set=set, get=get, setinversion=setinversion, getinversion=getinversion)
}
    


## Write a short comment describing this function
## This function computes the inverse of the special matrix returned by makeCache
## Matrix avove.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinversion()
    if(!is.null(inv)){
          message("getting cached data")
          return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinversion(inv)
    inv
}
