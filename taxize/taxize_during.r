# Install taxize

install.packages("taxize")

# Load taxize

library(taxize)

# Taxonomic identifiers

get_ids("Helianthus annuus", db="ncbi")
get_ids(c("Helianthus annuus", "Poa annua"), db="ncbi")

# Taxonomic hierarchies

classification("Helianthus annuus", db="ncbi")

classification(get_ids("Helianthus annuus", db="ncbi"))

# Check name spelling

mynames <- c("Helianthus annus", "Poa anua", "Pinus contort")
out <- tnrs(query = mynames, source_="iPlant_TNRS")
out[,c(1:5)]

# Synonyms

synonyms(c("Poa annua","Pinus contorta","Puma concolor"), db="itis")

# Get names 'downstream'

col_downstream(name="Apis", downto="Species")
