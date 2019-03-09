LATEX_FILES=`ls *.tex`

all:
	./genlatextmp ;
	for file in $(LATEX_FILES); do \
		pdflatex $${file} && pdflatex $${file} ; \
		echo "Created pdf for: $${file}" ; \
	done ;

clean:
	rm -f *.aux *.log *.toc *.pdf ;
	rm -rf tmp_msg ;

