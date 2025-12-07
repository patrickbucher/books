DOC_OPTS=--toc -s
PDF_OPTS=--pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V urlcolor=blue -V lang=en
PDF_OPTS_DE=--pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V urlcolor=blue -V lang=de
FONT_OPTS=-V mainfont='Libertinus Serif' -V sansfont='Libertinus Sans' -V monofont='Fantasque Sans Mono'
DATE=-V date="`date +'%Y-%m-%d'`"
DATE_DE=-V date="`date +'%d.%m.%Y'`"

ALL=linz-spillner-basiswissen-softwaretest.pdf \
	dobelli_kunst-des-digitalen-lebens.pdf \
	dostojewskij_brueder-karamasow.pdf \
	hennrich_cloud-computing-dsgvo.pdf \
	meyer-agile-good-hype-ugly.pdf

.PHONY: all clean

all: $(ALL)

dobelli_kunst-des-digitalen-lebens.pdf: dobelli_kunst-des-digitalen-lebens.md
	pandoc -s $(PDF_OPTS_DE) $(FONT_OPTS) $(DATE_DE) $< -o $@

linz-spillner-basiswissen-softwaretest.pdf: linz-spillner-basiswissen-softwaretest.md
	pandoc -s -N $(DOC_OPTS) $(PDF_OPTS_DE) $(FONT_OPTS) $(DATE_DE) $< -o $@

meyer-agile-good-hype-ugly.pdf: meyer-agile-good-hype-ugly.md
	pandoc -s -N $(DOC_OPTS) $(PDF_OPTS) $(FONT_OPTS) $(DATE) $< -o $@

.SUFFIXES: .md .pdf
.md.pdf:
	pandoc $(DOC_OPTS) $(PDF_OPTS_DE) $(FONT_OPTS) $(DATE_DE) $< -o $@

clean:
	rm -f $(ALL)
