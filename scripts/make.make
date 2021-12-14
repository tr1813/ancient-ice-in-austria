all: html

caves: hochschneid guffert eisgruben baerenloch kraterschacht grosser hundalm tremml index

html: ../descriptions/*.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/*.md -o ../descriptions/descriptions.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Cave descriptions"

index: ../descriptions/index.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/index.md -o ../descriptions/index.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Home Page"

baerenloch: ../descriptions/baerenloch.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/baerenloch.md -o ../descriptions/baerenloch.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Bärenloch Eishöhle"


eisgruben: ../descriptions/eisgruben.md
	m4 -I ../descriptions/age_models/Eisgruben/ ../descriptions/eisgruben.md > ../descriptions/_tmp.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/eisgruben.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Eisgruben Eishöhle"
	rm ../descriptions/_tmp.md

hochschneid: ../descriptions/hochschneid.md
	m4 -I ../descriptions/age_models/Hochschneid/ ../descriptions/hochschneid.md > ../descriptions/_tmp.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/hochschneid.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Hochschneid Eishöhle"
	rm ../descriptions/_tmp.md

guffert: ../descriptions/guffert.md
	m4 -I ../descriptions/age_models/Guffert/ ../descriptions/guffert.md > ../descriptions/_tmp.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/guffert.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Guffert Eisschacht"
	rm ../descriptions/_tmp.md

grosser: ../descriptions/grosser-naturschacht.md
	m4 -I ../descriptions/age_models/GrosserNaturschacht/ ../descriptions/grosser-naturschacht.md > ../descriptions/_tmp.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/grosser-naturschacht.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	 -s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Großer Naturschacht"
	 rm ../descriptions/_tmp.md

kraterschacht: ../descriptions/kraterschacht.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/kraterschacht.md -o ../descriptions/kraterschacht.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Kraterschacht"


hundalm: ../descriptions/hundalm.md
	m4 -I ../descriptions/age_models/Hundalm/ ../descriptions/hundalm.md > ../descriptions/_tmp.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/hundalm.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Hundalm Tropfstein- und Eishöhle"
	rm ../descriptions/_tmp.md

tremml: ../descriptions/tremml.md
	m4 -I ../descriptions/age_models/Tremml/ ../descriptions/tremml.md > ../descriptions/_tmp.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/tremml.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title="Tremmlschacht"
	rm ../descriptions/_tmp.md
