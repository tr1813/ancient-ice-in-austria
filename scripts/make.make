all: html

caves: hochschneid guffert eisgruben baerenloch kraterschacht grosser hundalm tremml index

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

hochschneid: ../descriptions/hochschneid.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/hochschneid.md -o ../descriptions/hochschneid.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Hochschneid Eishöhle"

guffert: ../descriptions/guffert.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/guffert.md -o ../descriptions/guffert.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Guffert Eisschacht"

grosser: ../descriptions/grosser-naturschacht.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/grosser-naturschacht.md -o ../descriptions/grosser-naturschacht.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Großer Naturschacht"

kraterschacht: ../descriptions/kraterschacht.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/kraterschacht.md -o ../descriptions/kraterschacht.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Kraterschacht"


hundalm: ../descriptions/hundalm.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/hundalm.md -o ../descriptions/hundalm.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Hundalm Tropfstein- und Eishöhle"

tremml: ../descriptions/tremml.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/tremml.md -o ../descriptions/tremml.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s --metadata title="Tremmlschacht"