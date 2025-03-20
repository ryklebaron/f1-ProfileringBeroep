.PHONY: python pdf epub summary all clean

all: python pdf

python:
	python3 -m venv venv && . venv/bin/activate && pip install -r python/requirements.txt && cd python && python generate.py

pdf:
	max_print_line=1000 latexmk -pdf -pdflatex="lualatex -halt-on-error -interaction=nonstopmode -synctex=1" -output-directory=out document.tex

epub:
	mkdir -p out/epub
	cp *.tex out/epub
	cp -a images out/epub
	cp *.bib out/epub
	cd out/epub && tex4ebook -lf epub3 document.tex && biber document && tex4ebook -lf epub3 document.tex

# Op ubuntu kan het zijn dat texlogsieve niet in het pad zit. Dit kan worden toegevoegd met iets als:
# sudo ln -s /usr/share/texlive/texmf-dist/scripts/texlogsieve/texlogsieve /usr/local/bin
summary:
	texlogsieve out/document.log

clean:
	rm -rf out
	rm -rf _markdown_document

cleanall: clean
	rm -rf `biber --cache` # soms raakt biber cache corrupt
