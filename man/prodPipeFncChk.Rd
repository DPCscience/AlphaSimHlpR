% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ProductPipeline.R
\name{prodPipeFncChk}
\alias{prodPipeFncChk}
\title{prodPipeFncChk function}
\usage{
prodPipeFncChk(records, bsp, SP)
}
\arguments{
\item{records}{The breeding program \code{records} object. See \code{fillPipeline} for details}

\item{bsp}{A list of breeding scheme parameters}

\item{SP}{the AlphaSimR SimParam object}
}
\value{
A records object that has new records created by advancing by a generation
}
\description{
function to advance a simulated breeding product pipeline forward by one generation. See Gaynor et al. 2017 for the general idea.
}
\details{
The breeding program product pipeline will have been set by initializeFunc. This function moves the breeding program along by one generation and saves all the resulting phenotypes to the records object.
}
\examples{
bsp <- specifyPipeline()
bsp <- specifyPopulation(bsp)
initList <- initializeFunc(bsp)
SP <- initList$SP
bsp <- initList$bsp
records <- initList$records
records <- prodPipeFncChk(records, bsp, SP)
records <- popImprov1(records, bsp, SP)

}
