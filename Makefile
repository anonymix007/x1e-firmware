DEST?=/usr/lib/firmware/

PWD:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

FILES=$(shell find firmware -type f)
INSTALLED=$(addprefix $(DEST)/,$(FILES))

$(DEST)/%: %
	@echo "'"x1e-$^"'" "->" "'"$@"'"
	@install -Dm644 $^ $@

install: $(INSTALLED)
