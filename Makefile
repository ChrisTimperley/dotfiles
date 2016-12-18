all: i3 bash tmux git

bash:
	${MAKE} -C bash
	source "${HOME}/.bashrc"

git: bash
	${MAKE} -C git

tmux: bash
	${MAKE} -C tmux

i3: bash
	${MAKE} -C i3

.PHONY: bash i3 git tmux
