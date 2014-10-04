
## ----setup, include=FALSE, echo=FALSE------------------------------------
knitr::opts_chunk$set(
  message = FALSE,
  warning = FALSE
)


## ----child="data_sources.md"---------------------------------------------




## ----installation, eval=FALSE--------------------------------------------
## install.packages("taxize")


## ------------------------------------------------------------------------
library(taxize)


## ----identifiers, eval=TRUE----------------------------------------------
get_ids(names="Chironomus riparius", db = 'ncbi')
get_ids(names=c("Chironomus riparius", "Poa annua"), db = c('ncbi','itis','col'))


## ----hierarchies, eval=TRUE----------------------------------------------
classification("Chironomus riparius", db = 'ncbi')
classification(get_uid("Chironomus riparius"))
# out <- get_ids(names="Poa annua", db = c('ncbi','itis','col','eol','tropicos'))
# classification(out)


## ----spelling, eval=TRUE-------------------------------------------------
mynames <- c("Helianthus annus", "Poa anua", "Pinus contort")
out <- tnrs(query = mynames, source="iPlant_TNRS")
out[,c(1:5)]


## ----synonyms, eval=TRUE-------------------------------------------------
synonyms(c("Poa annua",'Pinus contorta','Puma concolor'), db="itis")


## ----downstream, eval=TRUE-----------------------------------------------
col_downstream(name = "Apis", downto="Species")[[1]]


## ------------------------------------------------------------------------
sci2comm("Quercus lobata", db="itis",)
comm2sci("valley oak", db="itis")


