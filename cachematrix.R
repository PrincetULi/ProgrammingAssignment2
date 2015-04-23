## Cache the inverse of a matrix

## create a "matrix", in fact it is a list of functions with specific purpose

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setInvMat<-function(inverse) inv<<-inverse
  getInvMat<-function() inv
  list(set=set,get=get,setInvMat=setInvMat,getInvMat=getInvMat)

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  i<-x$getInvMat()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data)
  x$setInvMat(i)
  i
        
}
