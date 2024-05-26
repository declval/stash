PREFIX ?= /usr/local
PROGRAM = stash

all:
	@echo 'No build step necessary.'
	@echo 'Run PREFIX=<prefix> make {install,uninstall}.'

install:
	mkdir -p $(PREFIX)/bin
	cp -f $(PROGRAM) $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/$(PROGRAM)

.PHONY: all install uninstall
