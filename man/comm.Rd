% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comm.R
\name{comm}
\alias{comm}
\alias{localComm}
\alias{metaComm}
\title{Specify community objects}
\usage{
comm(abundance, traits, Smax)

localComm(abundance, traits, pi, Smax)

metaComm(abundance, traits, Smax)
}
\arguments{
\item{abundance}{a numeric vector of abundances for each species}

\item{traits}{matrix of traits; the first column specifies the species index
(i.e. the index of that species in the \code{abundance} vector) and the
subsequent columns specify the trait values}

\item{Smax}{a single integer specifying the total number of species ever
recorded in the local community (both locally extinct and extant)}

\item{pi}{a numeric vector of genetic diversities for each species}
}
\value{
an object of class \code{comm}
}
\description{
Specify community objects
}
\details{
\code{Smax} is used for internal bookkeeping.  The dimensions of
\code{abundance} and \code{traits} can be greater than
\code{Smax}.  In such cases, \code{Smax} is used to index where to begin
adding new information (e.g. a new species can be added at the index
\code{Smax + 1}).
}
\seealso{
\code{\link{comm-class}}
}
