all: cv.pdf

%.pdf: %.tex
	pdflatex -halt-on-error $<

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.vrb

view: cv.pdf
	xdg-open $<

.PHONY: all clean view
