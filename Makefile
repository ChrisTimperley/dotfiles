all: i3 git

bash:
	make -C bash

git: bash
	make -C git

i3: bash
	make -C i3

.PHONY: bash i3 git
