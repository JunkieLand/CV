# Curriculum Vitae

Here you can find my Curriculum Vitae in both French and English in LaTeX format. The PDF files provided correspond to the last version of the code.

## How to generate a PDF file ?

### The dirty way

To compile the LaTeX files to PDF format, you should first install the [Tex Live distribution](https://www.tug.org/texlive/), and then run the command :

    pdflatex CV_En_Nicolas_REY.tex

### The clean way

If like me, you don't wish to have Tex Live install a huge amount of stuff a bit every where on your computer, and you want to keep the possibility of updating with no pain, the other solution is to rely on [Docker](https://www.docker.com/). Admitting you have Docker installed, just run :

    docker run -it --rm -v $(pwd):/test leodido/texlive pdflatex -output-directory=/test CV_En_Nicolas_REY.tex

Even better, you can add the following in your `.zshrc` file :

    function pdflatex {
      docker run -it --rm -v $(pwd):/test leodido/texlive pdflatex -output-directory=/test "$@"
    }

Then you can now run :

    pdflatex CV_En_Nicolas_REY.tex

