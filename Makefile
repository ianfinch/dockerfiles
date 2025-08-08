SHELL := bash
DEFAULT_GOAL := help

.PHONY: help
help:
	cat Makefile | grep "^.PHONY" | sed 's/^.*:/- make/'

.PHONY: all
all: hugo npm

.PHONY: hugo
hugo:
	docker build -t guzo/hugo -f Dockerfile.hugo .

.PHONY: node
node:
	docker build -t guzo/node -f Dockerfile.node .
