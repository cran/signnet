% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blockmodel.R
\name{signed_blockmodel}
\alias{signed_blockmodel}
\title{Blockmodeling for signed networks}
\usage{
signed_blockmodel(g, k, alpha = 0.5, annealing = FALSE)
}
\arguments{
\item{g}{igraph object with a sign edge attribute.}

\item{k}{number of blocks}

\item{alpha}{see details}

\item{annealing}{logical. if TRUE, use simulated annealing (Default: FALSE)}
}
\value{
numeric vector of block assignments and the associated criterion value
}
\description{
Finds blocks of nodes with intra-positive and inter-negative edges
}
\details{
The function minimizes P(C)=\eqn{\alpha}N+(1-\eqn{\alpha})P,
where N is the total number of negative ties within plus-sets and P be the total number of
positive ties between plus-sets. This function implements the structural balance model. That is,
all diagonal blocks are positive and off-diagonal blocks negative.
For the generalized version see \link{signed_blockmodel_general}.
}
\examples{
library(igraph)

g <- sample_islands_signed(10, 10, 1, 20)
clu <- signed_blockmodel(g, k = 10, alpha = 0.5)
table(clu$membership)
clu$criterion

# Using simulated annealing (less change of getting trapped in local optima)
data("tribes")
clu <- signed_blockmodel(tribes, k = 3, alpha = 0.5, annealing = TRUE)
table(clu$membership)
clu$criterion
}
\references{
Doreian, Patrick and Andrej Mrvar (2009). Partitioning signed social networks. \emph{Social Networks} 31(1) 1-11
}
\author{
David Schoch
}
