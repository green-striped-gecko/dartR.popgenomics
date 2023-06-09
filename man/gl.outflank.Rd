% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gl.outflank.r
\name{gl.outflank}
\alias{gl.outflank}
\title{Identifies loci under selection per population using the outflank
 method of Whitlock and Lotterhos (2015)}
\usage{
gl.outflank(
  gi,
  plot = TRUE,
  LeftTrimFraction = 0.05,
  RightTrimFraction = 0.05,
  Hmin = 0.1,
  qthreshold = 0.05,
  ...
)
}
\arguments{
\item{gi}{A genlight or genind object, with a defined population structure
[required].}

\item{plot}{A switch if a barplot is wanted [default TRUE].}

\item{LeftTrimFraction}{The proportion of loci that are trimmed from the
lower end of the range of Fst before the likelihood function is applied
[default 0.05].}

\item{RightTrimFraction}{The proportion of loci that are trimmed from the
upper end of the range of Fst before the likelihood function is applied
[default 0.05].}

\item{Hmin}{The minimum heterozygosity required before including calculations
from a locus [default 0.1].}

\item{qthreshold}{The desired false discovery rate threshold for calculating
q-values [default 0.05].}

\item{...}{additional parameters (see documentation of outflank on github).}
}
\value{
Returns an index of outliers and the full outflank list
}
\description{
Identifies loci under selection per population using the outflank
 method of Whitlock and Lotterhos (2015)
}
\details{
This function is a wrapper around the outflank function provided by
Whitlock and Lotterhos. To be able to run this function the packages qvalue
(from bioconductor) and outflank (from github) needs to be installed. To do
so see example below.
}
\examples{
\donttest{
gl.outflank(bandicoot.gl, plot = TRUE)
}
}
\references{
Whitlock, M.C. and Lotterhos K.J. (2015) Reliable detection of loci
responsible for local adaptation: inference of a neutral model through
trimming the distribution of Fst. The American Naturalist 186: 24 - 36.

Github repository: Whitlock & Lotterhos:
 \url{https://github.com/whitlock/OutFLANK} (Check the readme.pdf within the
  repository for an explanation. Be aware you now can run OufFLANK from a
  genlight object)
}
\seealso{
\code{\link{utils.outflank}}, \code{\link{utils.outflank.plotter}},
 \code{\link{utils.outflank.MakeDiploidFSTMat}}
}
