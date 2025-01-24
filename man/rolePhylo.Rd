% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rolePhylo.R
\name{rolePhylo}
\alias{rolePhylo}
\title{Specify a RoLE model phylogeny}
\usage{
rolePhylo(n, e, l, alive, tipNames, scale)
}
\arguments{
\item{n}{number of tips}

\item{e}{edge matrix; two columns give ancestor, child pair}

\item{l}{numeric vector of edge lengths (in units of time steps = 1/J
generations)}

\item{alive}{vector indicating whether tips are extant or not}

\item{tipNames}{vector of tip names}

\item{scale}{time scale translation to years}
}
\description{
Specify a RoLE model phylogeny
}
