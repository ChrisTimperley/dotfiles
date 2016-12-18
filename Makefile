all: i3 git

git:
	make -C git

i3:
	make -C i3

.PHONY: i3 git
