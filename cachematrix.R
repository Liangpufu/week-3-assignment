## Put comments here that give an overall description of what your
## functions do
## this function will create a matrix, set and get the value of the matrix 
## and then set the inverse and get the inverse of it

## Write a short comment describing this function
##makeCacheMatrix will create a matrix object which will cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
  
  inver <- NULL		#this will later hold value of the inverse
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  get <-function() x 	#get the value of original matrix
  setinverse <- function (inverse) inver <<- inverse  #set the inverse value 
  getinverse <- function () inver	#get the inversed value
  list (ser = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Write a short comment describing this function
##cacheSolve will computes the inverse of what is created by makeCacheMat
##the if statement will seperate the situation: when the inverse was cal
#it will return the already calculated one, if not it will calculate it

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  inver <- x$getinverse()
  if(!is.null(inver)){
    message("getting cached data")
    return (inver)
  }
  matrix <- x$get()
  inver <- solve(maatrix,...)
  x$setinverse(inver)
  inver
  
}

