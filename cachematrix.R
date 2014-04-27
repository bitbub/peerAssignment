makeCacheMatrix <- function(x , nrow=0, ncol=0) {
   
    get <- function(){
    
        mat <- matrix(x, nrow, ncol)
        matInv <- solve(mat)
        matInv
        
    }

    list(get=get)
}

cacheSolve <- function(x, ...){
    m <- x$get() 
    if(!is.null(m)){
        
        message("getting catched data")
        return(m)
    }
    
}


x = makeCacheMatrix(1:4,2,2)
x$get()
y = cacheSolve(x)
y
