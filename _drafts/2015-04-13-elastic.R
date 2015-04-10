## ----, echo=FALSE--------------------------------------------------------
knitr::opts_chunk$set(
	comment = "#>", 
	collapse = TRUE,
	warning = FALSE, 
	message = FALSE
)

## ----eval=FALSE----------------------------------------------------------
## install.packages("elastic")

## ----message=FALSE-------------------------------------------------------
library("elastic")

## ------------------------------------------------------------------------
connect()

## ------------------------------------------------------------------------
cat_()

## ------------------------------------------------------------------------
cat_indices()

## ------------------------------------------------------------------------
cluster_health()

## ----eval=FALSE----------------------------------------------------------
## nodes_info()

## ----echo=FALSE----------------------------------------------------------
index_delete("animals")

## ------------------------------------------------------------------------
index_create("animals")

## ------------------------------------------------------------------------
index_get("animals")

## ------------------------------------------------------------------------
docs_create(index='animals', type='bears', id=1, body=list(id="12345", name="big bear"))
docs_create(index='animals', type='lions', id=1, body=list(id="6789", name="scary lion!"))

## ------------------------------------------------------------------------
docs_get(index='animals', type='bears', id=1)

## ------------------------------------------------------------------------
docs_mget(index_type_id=list(c("animals","bears",1), c("animals","lions",1)))

## ----eval=FALSE----------------------------------------------------------
## shakespeare <- system.file("examples", "shakespeare_data.json", package = "elastic")

## ----eval=FALSE----------------------------------------------------------
## docs_bulk(shakespeare)

## ------------------------------------------------------------------------
Search(index = "shakespeare", size = 1)$hits$hits

## ------------------------------------------------------------------------
Search(index="shakespeare", type="scene",
       q="york", size=2, fields = 'speaker')$hits$hits

## ------------------------------------------------------------------------
Search(index="shakespeare", q="text_entry:ma~")$hits$total

## ------------------------------------------------------------------------
Search(index="shakespeare", q="line_id:[10 TO 20]")$hits$total

## ------------------------------------------------------------------------
Search(index="shakespeare", size=1, explain=TRUE)

## ------------------------------------------------------------------------
aggs <- list(aggs = list(stats = list(terms = list(field = "text_entry"))))
res <- Search(index="shakespeare", body=aggs)
plyr::ldply(res$aggregations$stats$buckets, data.frame)

## ----, eval=FALSE--------------------------------------------------------
## aggs <- '{
##     "aggs": {
##         "stats" : {
##             "terms" : {
##                 "field" : "text_entry"
##             }
##         }
##     }
## }'
## Search(index="shakespeare", body=aggs)

