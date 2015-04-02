## ----, echo=FALSE--------------------------------------------------------
knitr::opts_chunk$set(
	comment = "#>", 
	collapse = TRUE,
	warning = FALSE, 
	message = FALSE
)

## ----eval=FALSE----------------------------------------------------------
## install.packages("taxize")

## ------------------------------------------------------------------------
library("taxize")

## ------------------------------------------------------------------------
get_ids(names="Chironomus riparius", db = 'ncbi')

## ------------------------------------------------------------------------
get_ids(names=c("Chironomus riparius", "Poa annua"), db = c('ncbi','itis','col'))

## ------------------------------------------------------------------------
classification("Chironomus riparius", db = 'ncbi')

## ------------------------------------------------------------------------
classification(get_uid("Chironomus riparius"))

## ----eval=FALSE----------------------------------------------------------
## out <- get_ids(names="Poa annua", db = c('ncbi','itis','col','eol','tropicos'))
## classification(out)

## ------------------------------------------------------------------------
mynames <- c("Helianthus annus", "Poa anua", "Pinus contort")
out <- tnrs(query = mynames, source="iPlant_TNRS")
out[,c(1:5)]

## ------------------------------------------------------------------------
synonyms(c("Poa annua",'Pinus contorta','Puma concolor'), db="itis")

## ------------------------------------------------------------------------
col_downstream(name = "Apis", downto="Species")[[1]]

## ------------------------------------------------------------------------
sci2comm("Quercus lobata", db="itis")

## ------------------------------------------------------------------------
comm2sci("valley oak", db="itis")

