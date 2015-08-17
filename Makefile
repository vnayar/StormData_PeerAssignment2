main : StormDamage.html

upload : StormDamage.html
	Rscript -e "markdown::rpubsUpload(title='Storm Damage: Peer Assessment 2', htmlFile='$<')"

clean :
	rm -rf cache

StormDamage.html :

%.html : %.md
	Rscript -e "markdown::markdownToHTML('$<', output='$@')"

%.md : %.Rmd
	Rscript -e "knitr::knit('$<', output='$@')"

