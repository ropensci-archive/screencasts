---
layout: default
title: taxize
---



Here's the taxize screencast!

Follow along below in your favorite R client.

<iframe src="//player.vimeo.com/video/92883063" width="600" height="381" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>


taxize screencast
==========


## Intro

> Hi, I'm Scott Chamberlain

> In this screencast, I'll do a brief intoduction to the taxize package - a taxonomic toolbelt for R

> You can install taxize from [CRAN](http://cran.r-project.org/web/packages/taxize/index.html), or install the [development version from GitHub](https://github.com/ropensci/taxize).

> taxize interacts with about 20 data sources


<table>
<colgroup>
<col style="text-align:left;"/>
<col style="text-align:left;"/>
<col style="text-align:left;"/>
<col style="text-align:left;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
  <th style="text-align:left;">Souce</th>
  <th style="text-align:left;">Function prefix</th>
  <th style="text-align:left;">API Docs</th>
  <th style="text-align:left;">API key</th>
  <th style="text-align:left;"><em>soap branch only</em></th>
</tr>
</thead>

<tbody>
<tr>
  <td style="text-align:left;">Encylopedia of Life</td>
  <td style="text-align:left;"><code>eol</code></td>
  <td style="text-align:left;"><a href="http://www.eol.org/api/">link</a></td>
  <td style="text-align:left;"><a href="http://eol.org/users/register">link</a></td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Taxonomic Name Resolution Service</td>
  <td style="text-align:left;"><code>tnrs</code></td>
  <td style="text-align:left;"><a href="http://api.phylotastic.org/tnrs">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Integrated Taxonomic Information Service</td>
  <td style="text-align:left;"><code>itis</code></td>
  <td style="text-align:left;"><a href="http://www.itis.gov/ws_description.html">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Phylomatic</td>
  <td style="text-align:left;"><code>phylomatic</code></td>
  <td style="text-align:left;"><a href="http://www.phylodiversity.net/phylomatic/phylomatic_api.html">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">uBio</td>
  <td style="text-align:left;"><code>ubio</code></td>
  <td style="text-align:left;"><a href="http://www.ubio.org/index.php?pagename=xml_services">link</a></td>
  <td style="text-align:left;"><a href="http://www.ubio.org/index.php?pagename=form">link</a></td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Global Names Resolver</td>
  <td style="text-align:left;"><code>gnr</code></td>
  <td style="text-align:left;"><a href="http://resolver.globalnames.org/api">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Global Names Index</td>
  <td style="text-align:left;"><code>gni</code></td>
  <td style="text-align:left;"><a href="https://github.com/dimus/gni/wiki/api">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">IUCN Red List</td>
  <td style="text-align:left;"><code>iucn</code></td>
  <td style="text-align:left;"><a href="https://www.assembla.com/spaces/sis/wiki/Red_List_API?version=3">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Tropicos</td>
  <td style="text-align:left;"><code>tp</code></td>
  <td style="text-align:left;"><a href="http://services.tropicos.org/help">link</a></td>
  <td style="text-align:left;"><a href="http://services.tropicos.org/help?requestkey">link</a></td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Plantminer</td>
  <td style="text-align:left;"><code>plantminer</code></td>
  <td style="text-align:left;"><a href="http://www.plantminer.com/help">link</a></td>
  <td style="text-align:left;"><a href="http://www.plantminer.com/help">link</a></td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Theplantlist dot org</td>
  <td style="text-align:left;"><code>tpl</code></td>
  <td style="text-align:left;">**</td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Catalogue of Life</td>
  <td style="text-align:left;"><code>col</code></td>
  <td style="text-align:left;"><a href="http://www.catalogueoflife.org/colwebsite/content/web-services">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Global Invasive Species Database</td>
  <td style="text-align:left;"><code>gisd</code></td>
  <td style="text-align:left;">***</td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">National Center for Biotechnology Information</td>
  <td style="text-align:left;"><code>ncbi</code></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">CANADENSYS Vascan name search API</td>
  <td style="text-align:left;"><code>vascan</code></td>
  <td style="text-align:left;"><a href="http://data.canadensys.net/vascan/api">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">International Plant Names Index (IPNI)</td>
  <td style="text-align:left;"><code>ipni</code></td>
  <td style="text-align:left;"><a href="http://www.ipni.org/link_to_ipni.html">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">World Register of Marine Species (WoRMS)</td>
  <td style="text-align:left;"><code>worms</code></td>
  <td style="text-align:left;"><a href="http://www.marinespecies.org/aphia.php?p=webservice">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;"><strong>TRUE</strong></td>
</tr>
<tr>
  <td style="text-align:left;">Barcode of Life Data Systems (BOLD)</td>
  <td style="text-align:left;"><code>bold</code></td>
  <td style="text-align:left;"><a href="http://www.boldsystems.org/index.php/Resources">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
<tr>
  <td style="text-align:left;">Pan-European Species directories Infrastructure (PESI)</td>
  <td style="text-align:left;"><code>pesi</code></td>
  <td style="text-align:left;"><a href="http://www.eu-nomen.eu/portal/webservices.php">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;"><strong>TRUE</strong></td>
</tr>
<tr>
  <td style="text-align:left;">Mycobank</td>
  <td style="text-align:left;"><code>myco</code></td>
  <td style="text-align:left;"><a href="http://www.mycobank.org/Services/Generic/Help.aspx?s=searchservice">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;"><strong>TRUE</strong></td>
</tr>
<tr>
  <td style="text-align:left;">National Biodiversity Network (UK)</td>
  <td style="text-align:left;"><code>nbn</code></td>
  <td style="text-align:left;"><a href="https://data.nbn.org.uk/Documentation/Web_Services/Web_Services-REST/resources/restapi/rest.html">link</a></td>
  <td style="text-align:left;">none</td>
  <td style="text-align:left;">false</td>
</tr>
</tbody>
</table>

> More will be added in the future

> Taxonomic names are something many biologists have to deal with

> I'll walk you through a variety of things you can do with taxize

## Installation and load



```r
install.packages("taxize")
```



```r
library("taxize")
```

## Taxonomic identifiers



```r
get_ids(names="Chironomus riparius", db = 'ncbi')
#> $ncbi
#> Chironomus riparius 
#>            "315576" 
#> attr(,"class")
#> [1] "uid"
#> attr(,"match")
#> [1] "found"
#> attr(,"uri")
#> [1] "http://www.ncbi.nlm.nih.gov/taxonomy/315576"
#> 
#> attr(,"class")
#> [1] "ids"
```


```r
get_ids(names=c("Chironomus riparius", "Poa annua"), db = c('ncbi','itis','col'))
#>      colid      name    rank        status
#> 1 19274115 Poa annua Species accepted name
#> 2 19274116 Poa annua Species       synonym
#>                                             source    acc_name
#> 1 WCSP: World Checklist of Selected Plant Families        <NA>
#> 2 WCSP: World Checklist of Selected Plant Families Poa infirma
#> $ncbi
#> Chironomus riparius           Poa annua 
#>            "315576"             "93036" 
#> attr(,"class")
#> [1] "uid"
#> attr(,"match")
#> [1] "found" "found"
#> attr(,"uri")
#> [1] "http://www.ncbi.nlm.nih.gov/taxonomy/315576"
#> [2] "http://www.ncbi.nlm.nih.gov/taxonomy/93036" 
#> 
#> $itis
#> Chironomus riparius           Poa annua 
#>            "129313"             "41107" 
#> attr(,"match")
#> [1] "found" "found"
#> attr(,"uri")
#> [1] "http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=129313"
#> [2] "http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=41107" 
#> attr(,"class")
#> [1] "tsn"
#> 
#> $col
#> Chironomus riparius           Poa annua 
#>           "8663146"          "19274115" 
#> attr(,"class")
#> [1] "colid"
#> attr(,"match")
#> [1] "found" "found"
#> attr(,"uri")
#> [1] "http://www.catalogueoflife.org/col/details/species/id/8663146" 
#> [2] "http://www.catalogueoflife.org/col/details/species/id/19274115"
#> 
#> attr(,"class")
#> [1] "ids"
```

## Hierarchies

> and now taxonomic hieararchies


```r
classification("Chironomus riparius", db = 'ncbi')
#> $`Chironomus riparius`
#>                         name         rank      id
#> 1         cellular organisms      no rank  131567
#> 2                  Eukaryota superkingdom    2759
#> 3               Opisthokonta      no rank   33154
#> 4                    Metazoa      kingdom   33208
#> 5                  Eumetazoa      no rank    6072
#> 6                  Bilateria      no rank   33213
#> 7                Protostomia      no rank   33317
#> 8                  Ecdysozoa      no rank 1206794
#> 9              Panarthropoda      no rank   88770
#> 10                Arthropoda       phylum    6656
#> 11               Mandibulata      no rank  197563
#> 12              Pancrustacea      no rank  197562
#> 13                  Hexapoda   superclass    6960
#> 14                   Insecta        class   50557
#> 15                Dicondylia      no rank   85512
#> 16                 Pterygota      no rank    7496
#> 17                  Neoptera     subclass   33340
#> 18             Endopterygota   infraclass   33392
#> 19                   Diptera        order    7147
#> 20                Nematocera     suborder    7148
#> 21              Culicomorpha   infraorder   43786
#> 22             Chironomoidea  superfamily   41828
#> 23              Chironomidae       family    7149
#> 24              Chironominae    subfamily   54970
#> 25               Chironomini        tribe   72530
#> 26                Chironomus        genus    7150
#> 27 Chironomus incertae sedis      no rank 1165752
#> 28       Chironomus riparius      species  315576
#> 
#> attr(,"class")
#> [1] "classification"
#> attr(,"db")
#> [1] "ncbi"
```


```r
classification(get_uid("Chironomus riparius"))
#> $`315576`
#>                         name         rank      id
#> 1         cellular organisms      no rank  131567
#> 2                  Eukaryota superkingdom    2759
#> 3               Opisthokonta      no rank   33154
#> 4                    Metazoa      kingdom   33208
#> 5                  Eumetazoa      no rank    6072
#> 6                  Bilateria      no rank   33213
#> 7                Protostomia      no rank   33317
#> 8                  Ecdysozoa      no rank 1206794
#> 9              Panarthropoda      no rank   88770
#> 10                Arthropoda       phylum    6656
#> 11               Mandibulata      no rank  197563
#> 12              Pancrustacea      no rank  197562
#> 13                  Hexapoda   superclass    6960
#> 14                   Insecta        class   50557
#> 15                Dicondylia      no rank   85512
#> 16                 Pterygota      no rank    7496
#> 17                  Neoptera     subclass   33340
#> 18             Endopterygota   infraclass   33392
#> 19                   Diptera        order    7147
#> 20                Nematocera     suborder    7148
#> 21              Culicomorpha   infraorder   43786
#> 22             Chironomoidea  superfamily   41828
#> 23              Chironomidae       family    7149
#> 24              Chironominae    subfamily   54970
#> 25               Chironomini        tribe   72530
#> 26                Chironomus        genus    7150
#> 27 Chironomus incertae sedis      no rank 1165752
#> 28       Chironomus riparius      species  315576
#> 
#> attr(,"class")
#> [1] "classification"
#> attr(,"db")
#> [1] "ncbi"
```


```r
out <- get_ids(names="Poa annua", db = c('ncbi','itis','col','eol','tropicos'))
classification(out)
```

## Check name spelling

> Check name spelling


```r
mynames <- c("Helianthus annus", "Poa anua", "Pinus contort")
out <- tnrs(query = mynames, source="iPlant_TNRS")
out[,c(1:5)]
#>      submittedname      acceptedname    sourceid score       matchedname
#> 1    Pinus contort    Pinus contorta iPlant_TNRS  0.98    Pinus contorta
#> 2 Helianthus annus Helianthus annuus iPlant_TNRS  0.97 Helianthus annuus
#> 3         Poa anua         Poa annua iPlant_TNRS  0.96         Poa annua
```

## Synonyms

> Moving on to synonyms

> The names you currently have in your dataset may be synonyms of real names, and you need to update to the accepted names


```r
synonyms(c("Poa annua",'Pinus contorta','Puma concolor'), db="itis")
#> $`Poa annua`
#>                           name    tsn
#> 1      Poa annua var. aquatica 538978
#> 2       Poa annua var. reptans 538979
#> 3                  Aira pumila 785854
#> 4             Catabrosa pumila 787993
#> 5               Ochlopoa annua 791574
#> 6               Poa aestivalis 793946
#> 7                   Poa algida 793954
#> 8         Poa annua var. annua 802116
#> 9     Poa annua var. eriolepis 802117
#> 10 Poa annua var. rigidiuscula 802119
#> 11        Poa annua f. reptans 803667
#> 
#> $`Pinus contorta`
#>      name    tsn
#> 1 nomatch 183327
#> 
#> $`Puma concolor`
#>             name    tsn
#> 1 Felis concolor 180587
```

## Downstream

> Sometimes you want know "what species are in this genus!"


```r
col_downstream(name = "Apis", downto="Species")[[1]]
#>   childtaxa_id     childtaxa_name childtaxa_rank
#> 1      6971712 Apis andreniformis        Species
#> 2      6971713        Apis cerana        Species
#> 3      6971714       Apis dorsata        Species
#> 4      6971715        Apis florea        Species
#> 5      6971716 Apis koschevnikovi        Species
#> 6      6845885     Apis mellifera        Species
#> 7      6971717   Apis nigrocincta        Species
```

## Common from scientific and vice versa

> You may often need to get common names from scientific names, and vice versa. For example, maybe you need common names for a publication.


```r
sci2comm("Quercus lobata", db="itis")
#> $`Quercus lobata`
#> [1] "California white oak" "valley oak"
```


```r
comm2sci("valley oak", db="itis")
#> $`valley oak`
#> [1] "Quercus lobata"
```

## end

> That's it! Thanks for watching...
