## ----, echo=FALSE--------------------------------------------------------
knitr::opts_chunk$set(
	comment = "#>", 
	collapse = TRUE,
	warning = FALSE, 
	message = FALSE
)

## ----eval=FALSE----------------------------------------------------------
## install.packages("rgbif")

## ----message=FALSE-------------------------------------------------------
library("rgbif")

## ----occ_count1----------------------------------------------------------
occ_count(basisOfRecord = 'OBSERVATION')

## ----occ_count2----------------------------------------------------------
occ_count(taxonKey = 2435099, georeferenced = TRUE)

## ----occ_count3----------------------------------------------------------
occ_count(georeferenced = TRUE)

## ----occ_count4----------------------------------------------------------
denmark_code <- isocodes[grep("Denmark", isocodes$name), "code"]
occ_count(country = denmark_code)

## ------------------------------------------------------------------------
name_backbone(name = 'Helianthus', rank = 'genus', kingdom = 'plants')

## ------------------------------------------------------------------------
out <- name_lookup(query = 'mammalia')

## ------------------------------------------------------------------------
names(out)

## ------------------------------------------------------------------------
out$meta

## ------------------------------------------------------------------------
head(out$data)

## ------------------------------------------------------------------------
occ_search(scientificName = "Ursus americanus", limit = 20)

## ------------------------------------------------------------------------
key <- name_suggest(q = 'Helianthus annuus', rank = 'species')$key[1]
occ_search(taxonKey = key, limit = 20)

## ------------------------------------------------------------------------
occ_search(scientificName = "Ursus americanus", fields = 'name', limit = 20)

## ------------------------------------------------------------------------
splist <- c('Cyanocitta stelleri', 'Junco hyemalis', 'Aix sponsa')
keys <- sapply(splist, function(x) name_suggest(x)$key[1], USE.NAMES = FALSE)
occ_search(taxonKey = keys, limit = 5)

## ----occ_get1------------------------------------------------------------
occ_get(key = 766766824, return = 'data')

## ----occ_get2------------------------------------------------------------
occ_get(key = 766766824, return = 'hier')

## ----occ_get3------------------------------------------------------------
occ_get(key = 766766824, return = 'all')

## ----occ_get4------------------------------------------------------------
occ_get(key = c(766766824, 101010, 240713150, 855998194, 49819470), return = 'data')

