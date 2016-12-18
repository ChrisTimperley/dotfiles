all: gitconfig

gitconfig:
	(test -f ~/.gitconfig && echo "skipping: gitconfig (already exists)") \
		|| (ln -s ~/.gitconfig gitconfig && echo "linked gitconfig")

.PHONY: gitconfig
