# Magic line to cause "make" with no arguments to default to "make all".
.DEFAULT: all

all: docs

# Makefiles are like that, using lots of levels of containment.
docs: pdf html

pdf: booklet.pdf

html: booklet.html

booklet.pdf:
	pdflatex -shell-escape booklet.tex

booklet.html:
	# The extra argument are due to htlatex having wacky expectations.
	htlatex booklet.tex "html" "" "" -shell-escape

clean:
	rm booklet.pdf
