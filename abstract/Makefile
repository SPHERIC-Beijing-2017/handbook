#!/bin/bash

pcount=1;
for i in {46..48}
do   
     pdflatex  "\def\pcount{$pcount} \def\fileID{$i} \input{tex/$i.tex}"
     bibtex $i
     pdflatex  "\def\pcount{$pcount} \def\fileID{$i} \input{tex/$i.tex}"
     pdflatex  "\def\pcount{$pcount} \def\fileID{$i} \input{tex/$i.tex}"
     pi=$(pdfinfo $i.pdf | grep Pages | awk '{print $2}')
     pcount=$(($pcount+$pi))
done

mv  {1..57}.pdf pdfs
pdftk pdfs/{1..57}.pdf output main.pdf

clean:
	rm -f *.toc *.aux *.out *.blg *.bbl *.log *.snm *.nav *.pre *.bcf *.xml *.vrb *.atfi#

