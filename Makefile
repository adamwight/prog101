.DEFAULT: pdf

pdf: booklet.pdf

booklet.pdf:
	pdflatex -shell-escape booklet.tex

clean:
	rm booklet.pdf
