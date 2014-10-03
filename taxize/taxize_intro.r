# taxize screencast - 5 min

## taxize is a taxonomic toolbelt for R
## it interacts with 13 data sources currently, and more will be added
## Taxonomic names are something many biologists have to deal with names 
## 	I'm going to walk you through a variety of things you can do with taxize
##
## First, taxonomic identifiers

get_ids(names="Chironomus riparius", db = 'ncbi')
get_ids(names=(c("Chironomus riparius", "Poa annua"), db = c('ncbi','itis','col'))

## and now taxonomic hieararchies

classification("Chironomus riparius", db = 'ncbi')
classification(get_uid("Chironomus riparius"))
# out <- get_ids(names="Poa annua", db = c('ncbi','itis','col','eol','tropicos'))
# classification(out)

### Check name spelling

mynames <- c("Helianthus annus", "Poa anua", "Pinus contort")
out <- tnrs(query = mynames, source="iPlant_TNRS")
out[,c(1:5)]

## Moving on to synonyms
## The names you currently have in your 
## 	dataset may be synonyms of real names, and you need to update to the accepted names

synonyms(c("Poa annua",'Pinus contorta','Puma concolor'), db="itis")

## Sometimes you just wann know "what species are in this genus!!!"

col_downstream(name = "Apis", downto="Species")[[1]]

## That's it! Thanks for watching...
## 
## <rOpensci image>