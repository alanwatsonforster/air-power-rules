.SUFFIXES			:	.tex .pdf

.tex.pdf			:
	latexmk -gg -xelatex $<

all					:	project.pdf						\
						rules-working.pdf				\
						rules-version-1A.pdf			\
						rules-version-1B.pdf			\
						rules-version-1B-changes.pdf	\
						rules-version-1C.pdf			\
						rules-version-1C-changes.pdf	\
						rules-version-2A.pdf			\
						rules-version-2A-changes.pdf	\
						rules-version-2B.pdf			\
						rules-version-2B-changes.pdf	\
						rules-version-3A.pdf			\
						rules-version-3A-changes.pdf	\

clean				:
	latexmk -c
	rm -f project.pdf rules-working.pdf rules-version-*.pdf external/*
