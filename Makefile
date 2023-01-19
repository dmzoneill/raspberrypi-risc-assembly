.PHONY: build

SHELL := /bin/bash
CWD := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
THIS_FILE := $(lastword $(MAKEFILE_LIST))
WHOAMI := $(shell whoami)

build:
	- as max.as -o max.o
	- ld max.o -o max

run:
	./max; echo $$?


