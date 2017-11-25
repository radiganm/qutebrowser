#!/usr/bin/make -f
## boostrap.mk (for qutebrowser)
## Mac Radigan
##
## Build instructions, as per instructions in README.asciidoc

.PHONY: bootstrap update packages-apt install
.DEFAULT_GOAL := bootstrap

bootstrap:
	tox -e mkvenv-pypi

install: bootstrap

update:

packages-apt:
	apt-get install -y tox

## *EOF*
