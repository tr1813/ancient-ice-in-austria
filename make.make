all: html

caves: pages index

#https://stackoverflow.com/questions/546817/iterating-over-two-lists-in-parallel-in-bin-sh

pages: 
	for cave in hundalm hochschneid eisgruben baerenloch guffert grosser-naturschacht tremml; do \
		m4 -I ./markdown/map_code.md ./markdown/$$cave.md > ./markdown/_tmp2.md ;\
		pandoc --toc --citeproc --top-level-division=section ./markdown/_tmp2.md -o ./html/$$cave.html \
		--bibliography ./bibliography/tanguy_bib.bib \
		--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
		-s -c ../BareCSS-v1/css/bare.min.css; \
		echo "updated html page for cave " $$cave; \
	done

site_selection: ./markdown/site_selection.md
	pandoc --toc --citeproc --top-level-division=section ./markdown/site_selection.md -o ./html/site_selection.html \
	--bibliography ./bibliography/tanguy_bib.bib \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/elsevier-harvard.csl \
	-s -c ../BareCSS-v1/css/bare.min.css
