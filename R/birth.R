#' @title Birth
#'
#' @description Generic and methods for computing the birth process
#'
#' @param x the object which determines method dispatch
#' @param i the index of the species undergoing birth
#'
#' @rdname birth
#' @export

setGeneric('birth',
           function(x, i, ...) standardGeneric('birth'),
           signature = 'x')

#' function to implement birth for \code{localComm} class objects
#' @param x an object of class \code{localComm}
#' @param i the vector of indices of the species undergoing birth

.birthLocal <- function(x, i) {

    #increment abundance of species in local community by 1
    x@abundance[i] <- x@abundance[i] + 1

    return(x)
}

setMethod('birth', 'localComm', .birthLocal)

#' function to implement birth for \code{roleModel} class objects
#' @param x an object of class \code{roleModel}

.birthRole <- function(x) {

    # sample a species for birth relative to local abundance
    i <- sample(x@localComm@Smax, 1,
                prob = x@localComm@abundance[1:x@localComm@Smax])

    x@localComm <- birth(x@localComm, i)

    #intraspecific models will need code for trait inheritance etc later

    return(x)
}

setMethod('birth', 'roleModel', .birthRole)

# TEST
# source("R/comm.R")
# source("R/birth.R")
# foo <- localComm(1:10,matrix(1:100,nrow = 10, ncol = 10),1:10,10)
# foo@abundance[1]
# foo <- birth(foo,1)
# foo@abundance[1]
