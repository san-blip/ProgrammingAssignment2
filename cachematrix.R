## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##2 functions makeCacheMatrix and cacheSolve
##makeCache includes get, set etc

makeCacheMatrix <- function(x = matrix()) {
  a<- NULL
  set<- function(y){
    x<<- y
    a<<- NULL
  }
  get<- function() {x}
  setinverse<- function(inverse) a<<- inverse
  getinverse<- function() a
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)

}


## Write a short comment describing this function
##gives inverse of matrix and if it's null gives back a message

cacheSolve <- function(x, ...) {
        a<- x$getinverse () ## Return a matrix that is the inverse of 'x'
        if(!is.null(a)){
          message("getting cached data")
          return(a)
        }
        mat<- x$get()
        a<- solve(mat, ...)
        x$setinverse(a)
        a
}
