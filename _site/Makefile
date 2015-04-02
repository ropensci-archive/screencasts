all: asdfadf

taxize:
		cd _drafts;\
		Rscript --vanilla -e 'knitr::knit("2015-02-16-taxize.Rmd"); knitr::purl("2015-02-16-taxize.Rmd")';\
		cp 2015-02-16-taxize.md ../_posts

rgbif:
		cd _drafts;\
		Rscript -e 'knitr::knit("2015-04-06-rgbif.Rmd"); knitr::purl("2015-04-06-rgbif.Rmd")';\
		cp 2015-04-06-rgbif.md ../_posts

elastic:
		cd _drafts;\
		Rscript --vanilla -e 'knitr::knit("2015-04-13-elastic.Rmd"); knitr::purl("2015-04-13-elastic.Rmd")';\
		cp 2015-04-13-elastic.md ../_posts

serve:
		jekyll serve --watch
