% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gl.collapse.r
\name{gl.collapse}
\alias{gl.collapse}
\title{Collapses a distance matrix by amalgamating populations with pairwise
 fixed difference count less that a threshold}
\usage{
gl.collapse(fd, tpop = 0, tloc = 0, pb = FALSE, verbose = NULL)
}
\arguments{
\item{fd}{Name of the list of matrices produced by gl.fixed.diff() 
[required].}

\item{tpop}{Threshold number of fixed differences above which populations
will not be amalgamated [default 0].}

\item{tloc}{Threshold defining a fixed difference (e.g. 0.05 implies 95:5 vs
5:95 is fixed) [default 0].}

\item{pb}{If TRUE, show a progress bar on time consuming loops 
[default FALSE].}

\item{verbose}{Verbosity: 0, silent or fatal errors; 1, begin and end; 2,
progress log; 3, progress and results summary; 5, full report
[default 2 or as specified using gl.set.verbosity]}
}
\value{
A list containing the gl object x and the following square matrices:
\enumerate{
 \item $gl -- the new genlight object with populations collapsed;
 \item $fd -- raw fixed differences;
 \item $pcfd -- percent fixed differences;
 \item $nobs -- mean no. of individuals used in each comparison;
 \item $nloc -- total number of loci used in each comparison;
 \item $expfpos -- NA's, populated by gl.fixed.diff [by simulation]
 \item $expfpos -- NA's, populated by gl.fixed.diff [by simulation]
 \item $prob -- NA's, populated by gl.fixed.diff [by simulation]
        }
}
\description{
This script takes a file generated by gl.fixed.diff and amalgamates
populations with distance less than or equal to a specified threshold. The
distance matrix is generated by gl.fixed.diff().

The script then applies the new population assignments to the genlight object
 and recalculates the distance and associated matrices.
}
\examples{
 \donttest{
fd <- gl.fixed.diff(testset.gl,tloc=0.05)
fd
fd2 <- gl.collapse(fd,tpop=1)
fd2
fd3 <- gl.collapse(fd2,tpop=1)
fd3
}
 fd <- gl.fixed.diff(testset.gl,tloc=0.05)
 fd2 <- gl.collapse(fd)
}
\author{
Custodian: Arthur Georges -- Post to 
\url{https://groups.google.com/d/forum/dartr}
}
