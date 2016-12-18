all: bash_aliases bash_functions bashrc

bash_aliases:
	@ source "${PWD}/bash_functions" && \
		dotfilelink "${PWD}/bash_aliases" "${HOME}/.bash_aliases"

bash_functions:
	@ source "${PWD}/bash_functions" && \
		dotfilelink "${PWD}/bash_functions" "${HOME}/.bash_functions"

bashrc: bash_aliases bash_functions
	@ source "${PWD}/bash_functions" && \
		dotfilelink "${PWD}/bashrc" "${HOME}/.bashrc"

.PHONY: bash_aliases bash_functions bashrc
