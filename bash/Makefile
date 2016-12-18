all: bash_aliases

bash_aliases:
	@ (test -f ${HOME}/.bash_aliases && echo "skipping: bash_aliases (already exists)") \
		|| (ln -s ${PWD}/bash_aliases ${HOME}/.bash_aliases && echo "linked: bash_aliases") \
		|| true

.PHONY: bash_aliases
