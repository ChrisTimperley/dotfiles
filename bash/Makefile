SHELL=/bin/bash

all: bash_aliases bash_functions bashrc dockerfunc

dockerfunc:
	@ source "${CURDIR}/bash_functions" && \
		dotfilelink "${CURDIR}/dockerfunc" "${HOME}/.dockerfunc"

bash_aliases:
	@ source "${CURDIR}/bash_functions" && \
		dotfilelink "${CURDIR}/bash_aliases" "${HOME}/.bash_aliases"

bash_functions:
	@ source "${CURDIR}/bash_functions" && \
		dotfilelink "${CURDIR}/bash_functions" "${HOME}/.bash_functions"

bashrc: bash_aliases bash_functions
	@ source "${CURDIR}/bash_functions" && \
		dotfilelink "${CURDIR}/bashrc" "${HOME}/.bashrc"

.PHONY: bash_aliases bash_functions bashrc dockerfunc
