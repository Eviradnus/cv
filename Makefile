all: cv.pdf

%.pdf: %.tex
	pdflatex -halt-on-error $<

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.vrb

view: cv.pdf
	evince $<

.PHONY: all clean view
