all: i3 git

bash:
	${MAKE} -C bash

git: bash
	${MAKE} -C git

i3: bash
	${MAKE} -C i3

.PHONY: bash i3 git
