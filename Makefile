# Makefile to build libatscc2lua and output 
# both a lua file and Luarocks package

RMF=rm -rf
CAT=cat
LUAROCKS=luarocks
TAR=tar
CP=cp

ROCKVERSION=0.0
ROCKREVISION=0
ROCKSEMVER=$(ROCKVERSION)-$(ROCKREVISION)

CATS=$(wildcard CATS/*.lua)
SATS=$(wildcard SATS/*.lua)
HATS=$(wildcard HATS/*.lua)

# Main target
all: concat tarball

# Concatenated build
concat: libatscc2lua.lua
libatscc2lua.lua: $(CATS)
	$(CAT) $^ > $@

# Luarocks build TODO
rock: libatscc2lua-0.0-0.rock
libatscc2lua-0.0-0.src.rock: libatscc2lua.lua
	$(LUAROCKS) pack libatscc2lua-0.0-0.rockspec

tarball: libatscc2lua.tar.gz
libatscc2lua.tar.gz: SATS/ HATS/ libatscc2lua.lua 
	$(TAR) czvf $@ $^

clean:
	$(RMF) libatscc2lua.lua
	$(RMF) libatscc2lua-$(ROCKSEMVER).src.rock
	$(RMF) libatscc2lua.lua

.PHONY: clean all concat rock tarball
