all: html

html: ../descriptions/*.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/*.md -o ../descriptions/descriptions.html \
	--bibliography ../bibliography/tanguy_bib.bib -s \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	--metadata title="Cave descriptions"