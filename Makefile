ADDRESS1 ?= no-spam
ADDRESS2 ?= no-spam
MOBILE ?= no-spam
EMAIL ?= no-spam

.PHONY: cv.tex all clean view

all: cv.pdf

cv.tex:
	sed -e "s/@ADDRESS1@/$(ADDRESS1)/" \
	    -e "s/@ADDRESS2@/$(ADDRESS2)/" \
	    -e "s/@MOBILE@/$(MOBILE)/" \
	    -e "s/@EMAIL@/$(EMAIL)/" \
	    cv_nospam.tex > cv.tex

%.pdf: %.tex
	pdflatex -halt-on-error $<

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.vrb cv.tex

view: cv.pdf
	evince $<

