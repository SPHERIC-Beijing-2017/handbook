all:
	#xelatex main.tex
        #xelatex main.tex
        #xelatex main.tex

        xelatex main-print.tex
        xelatex main-print.tex
        xelatex main-print.tex

	#xelatex main-web.tex
        #xelatex main-web.tex
        #xelatex main-web.tex
clean:
	rm -f *.toc *.aux *.out *.blg *.bbl *.log *.snm *.nav *.pre *.bcf *.xml *.vrb *.atfi *.mtc *.maf *.mtc*

