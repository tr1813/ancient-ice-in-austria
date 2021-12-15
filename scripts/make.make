all: html

caves: pages index

#https://stackoverflow.com/questions/546817/iterating-over-two-lists-in-parallel-in-bin-sh

pages: 
	for cave in hundalm hochschneid eisgruben baerenloch guffert grosser-naturschacht tremml; do \
		m4 -I ../descriptions/age_models/$$cave/ ../descriptions/$$cave.md > ../descriptions/_tmp.md ;\
		pandoc --toc --citeproc --top-level-division=section ../descriptions/_tmp.md -o ../descriptions/$$cave.html \
		--bibliography ../bibliography/tanguy_bib.bib \
		--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
		-s -c ../scripts/BareCSS-v1/css/bare.min.css --metadata title=$$cave ; \
		rm ../descriptions/_tmp.md ;\
		echo "updated html page for cave " $$cave; \
	done

site_selection: ../descriptions/site_selection.md
	pandoc --toc --citeproc --top-level-division=section ../descriptions/site_selection.md -o ../descriptions/site_selection.html \
	--bibliography ../bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../scripts/BareCSS-v1/css/bare.min.css
