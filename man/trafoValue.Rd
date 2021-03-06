% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trafo.R
\name{trafoValue}
\alias{trafoValue}
\title{Transform a value.}
\usage{
trafoValue(par, x)
}
\arguments{
\item{par}{[\code{\link{Param}} | \code{\link{ParamSet}}]\cr
Parameter or parameter set.}

\item{x}{[any] \cr
Single value to check.
For a parameter set this must be a list. If the list is unnamed (not recommended) it must be in
the same order as the param set. If it is named, its names must match the parameter names in the
param set.}
}
\value{
Transformed value.
}
\description{
Transform a value with associated transformation function(s).
}
\examples{
# transform simple parameter:
p = makeNumericParam(id="x", trafo=function(x) x^2)
trafoValue(p, 2)
# for a parameter set different transformation functions are possible:
ps = makeParamSet(
  makeIntegerParam("u", trafo=function(x) 2*x),
  makeNumericVectorParam("v", len=2, trafo=function(x) x/sum(x)),
  makeDiscreteParam("w", values=c("a", "b"))
)
# now the values of "u" and "v" are transformed:
trafoValue(ps, list(3, c(2, 4), "a"))
}
