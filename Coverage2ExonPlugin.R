library("derfinder")
library("derfinderData")
library("GenomicRanges")
library("knitr")


input <- function(inputfile) {
   fullCov <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

####################################################################################
# COVERAGE2EXON
## Get the exon-level matrix
exonCov <- coverageToExon(fullCov, genomicState$fullGenome, L = 76)
write.csv(exonCov, outputfile)
}
