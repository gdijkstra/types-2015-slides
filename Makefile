PDF=slides.pdf
TEX=slides.tex

default : $(PDF)

preview : $(PDF)
	@if [ `uname` = 'Darwin' ]; then \
	  open -a /Applications/Skim.app $(PDF); \
	else \
	  zathura $(PDF); \
	fi

$(PDF) : $(TEX)
	pdflatex -halt-on-error $(TEX)
	pdflatex -halt-on-error $(TEX)

clean :
	rm -f *.aux *.log *.nav *.out *.ptb *.toc *.snm $(PDF) $(TEX) *.synctex.gz *.bcf *.bbl *.blg *.run.xml
