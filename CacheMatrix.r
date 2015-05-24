## Here are four four functions desired in this assignment
## make cachematrix houses getmatrix  and setmatrix functions

## create a matrix and caching its inverse

makeCacheMatrix <- function(x = matrix()) 
{
    m <- NULL 
    setcache <- function(y= matrix()) {  
    x <<- y
    m <<- solve(x)
  }
  getmatrix <- function() return(x) #this function returns matrix which is cached
  
}


## computes inverse of the special matrix returned by makeCacheMatrix checks if matrix returned is same if so returns cache

cacheSolve <- function(z, ...) 
  {
   amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
   amatrix$setcache()
   original<-amatrix$getmatrix() #this is matrix stored by makeCachematrix function     
   if(z==original) #checks if matrix in cacheSolve has changed 
   {
     message("getting cached data")
     return(amatrix$m)
     
   }
  else return(solve(z)) ## Return a matrix that is the inverse of new x
  }
  
  
     
        
