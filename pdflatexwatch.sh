#!/bin/bash

pdflatex () {
	docker run -it --rm -v $(pwd):/test leodido/texlive pdflatex -output-directory=/test "$@"
}

FILE=$1

while true
do
	inotifywait -e modify $FILE
	pdflatex $FILE
done