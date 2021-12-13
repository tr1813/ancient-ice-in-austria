all: html

caves: eisgruben baerenloch index

html: ../descriptions/*.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/*.md -o ../descriptions/descriptions.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Cave descriptions"

index: ../descriptions/index.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/index.md -o ../descriptions/index.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Home Page"

baerenloch: ../descriptions/baerenloch.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/baerenloch.md -o ../descriptions/baerenloch.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Bärenloch Eishöhle"

eisgruben: ../descriptions/eisgruben.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/eisgruben.md -o ../descriptions/eisgruben.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Eisgruben Eishöhle"