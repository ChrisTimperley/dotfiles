all: config

config:
	@ source "${HOME}/.bashrc" && \
		mkdir -p "${HOME}/.ssh/config.d" && \
		dotfilelink "${CURDIR}/config" "${HOME}/.ssh/config"

.PHONY: config
