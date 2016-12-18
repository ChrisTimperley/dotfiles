all: gitconfig

gitconfig:
	@ (test -f ${HOME}/.gitconfig && echo "skipping: gitconfig (already exists)") \
		|| (ln -s ${PWD}/gitconfig ${HOME}/.gitconfig && echo "linked: gitconfig") \
		|| true

.PHONY: gitconfig
