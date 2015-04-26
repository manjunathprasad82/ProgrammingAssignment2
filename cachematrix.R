# Following makeCacheMatrix function is used to cache the result so that we can use the result for later computation
# instead of calculating it again.

makeCacheMatrix <- function(x = matrix()) {

inversingX <- NULL 

 	# Above is used to store the inverse of the output

 set <- function(y) {
	
	x <<- y

	inversingX <<- NULL

	# setting this inversingX to NULL
}

 get <- function() x 
	
	# will call the input matrix
 
 setInverse <- function(inverse) inversingX <<- inverse 

	# initiallising the inverse matrix

 getInverse <- function() inversingX

	# rewart the inverse matrix

 list (set = set, get = get,
	 setInverse = setInverse,
	getInverse = getInverse)

	# from the above we can pull the list of function which contains the setting of the matrix , get the setted matrix , setting of inverse matrix and getting the inverse matrix



}


## Now creating cachesolve function to call for the inverse of the matrix Intially it checks
# for inverse of the matrix exsist, if it is then it skips calculation, if it doesn't exsist 
# then calculates inverse and assigns the value to cache useing setinverse function



cacheSolve <- function(x, ...) {
               m <- x$getInverse()

		# to retrieve the inverse matrix from object x

	if(!is.null(m)) { 
	
	message("Cache data is availabe")
		
		# we'll print the message saying that cache data is available
		
	return(m)
}
 data  <- x$get()

m <- solve(data)

	x$setInverse(m)

m
}
