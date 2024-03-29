\name{terms}
\docType{methods}

\alias{terms}
\alias{terms-methods}
\alias{terms,Performance-method}
\alias{terms,Person-method}

\title{ The top loading Terms of a Person or Performance }

\description{

	The meaning vector of a performance activates certain terms strongly above a defined threshold.
   \code{terms} returns this character vector of terms. If a person or vector of performances is handed
   over, it returns a list with a vector for each performance.

}


\usage{

   terms(x, ...)

}

\arguments{

  \item{x}{ A \code{Performance} object (or vector of), or \code{Person} object. }
  \item{\dots}{ Additional parameters passed on to \code{getActivatedTerms}. }

}

\value{
	Returns a vector with character strings.
}

\examples{

dmgr = DomainManager()
data(generic.domain)
dmgr$add(d, title="generic")

ppl = HumanResourceManager(dmgr)

fridolin = ppl$add("fridolin")
fridolin$read("a paper about business management")
fridolin$write("a forum message in the course forum of business management 101")

terms(fridolin)

}

\author{Fridolin Wild <wild@brookes.ac.uk>}
\references{Fridolin Wild (2016): Learning Analytics in R with SNA, LSA, and MPIA, Springer:Berlin.}

\seealso{
   \code{\link{Performance}}, \code{\link{Person}}, \code{\link{Performance-class}}
}

\keyword{ mpia }
\keyword{ terms }
\keyword{ keywords }
