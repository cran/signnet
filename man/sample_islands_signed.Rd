% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random_graphs.R
\name{sample_islands_signed}
\alias{sample_islands_signed}
\title{A graph with random subgraphs connected by negative edges}
\usage{
sample_islands_signed(islands.n, islands.size, islands.pin, n.inter)
}
\arguments{
\item{islands.n}{The number of islands in the graph.}

\item{islands.size}{The size of the islands in the graph.}

\item{islands.pin}{The probability of intra-island edges.}

\item{n.inter}{number of negative edges between two islands.}
}
\value{
a signed igraph graph
}
\description{
Create a number of Erdos-Renyi random graphs with identical parameters, and connect them with the specified number of negative ties.
}
\examples{
library(igraph)
sample_islands_signed(3, 10, 0.5, 1)
}
\author{
David Schoch
}
