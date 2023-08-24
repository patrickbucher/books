DOC_OPTS=--toc -N -s
PDF_OPTS=--pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V urlcolor=blue -V lang=en
PDF_OPTS_DE=--pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V urlcolor=blue -V lang=de
FONT_OPTS=-V mainfont='Crimson Pro' -V sansfont='Lato' -V monofont='Fantasque Sans Mono'
DATE=-V date="`date +'%Y-%m-%d'`"
DATE_DE=-V date="`date +'%d.%m.%Y'`"

ALL=hennrich_cloud-computing-dsgvo.pdf

.PHONY: all clean

all: $(ALL)

hennrich_cloud-computing-dsgvo.pdf: hennrich_cloud-computing-dsgvo.md
	pandoc $(DOC_OPTS) $(PDF_OPTS_DE) $(FONT_OPTS) $(DATE_DE) $< -o $@
clean:
	rm -f $(ALL)
