all: build/notes.pdf

build/notes.pdf: *.tex
	mkdir -p build
	rubber --pdf --warn all --into build notes.tex

clean:
	$(RM) build/*
