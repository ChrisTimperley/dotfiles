all: i3 bash tmux git xorg

bash:
	${MAKE} -C bash
	source "${HOME}/.bashrc"

git: bash
	${MAKE} -C git

tmux: bash
	${MAKE} -C tmux

xorg: bash
	${MAKE} -C xorg

i3: bash xorg
	${MAKE} -C i3

.PHONY: bash i3 git tmux xorg
