main.pdf: main.tex imports/titlepage.tex 
	pdflatex --shell-escape main.tex
	bibtex main
	pdflatex --shell-escape main.tex
	pdflatex --shell-escape main.tex
	

clean:
	rm -f *.aux *.blg *.log *.bbl *.toc *.out *.bcf *.xml *.synctex.gz *.txt
	rm -f chapters/*.log
	rm -f imports/*.aux imports/*.log
	rm -rf _minted-main
