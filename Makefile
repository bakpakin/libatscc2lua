# Makefile to build libatscc2lua and output 
# both a lua file and Luarocks package

RMF=rm -rf
CAT=cat
LUAROCKS=luarocks

CATS=$(wildcard CATS/*.lua)

# Main target
all: concat

# Concatenated build
concat: libatscc2lua.lua
libatscc2lua.lua: $(CATS)
	echo "-- Auto generated - Do not edit\n" > $@
	$(CAT) $^ >> $@

clean:
	$(RMF) libatscc2lua.lua

.PHONY: clean all concat
