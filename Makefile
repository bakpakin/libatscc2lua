# Makefile to build libatscc2lua and output 
# both a lua file and Luarocks package

# Confiure tools used for make
PATSOPT?=$(PATSHOME)/bin/patsopt
ATSCC2LUA?=../bin/atscc2lua
RMF?=rm -rf
CAT?=cat
#LUAROCKS=luarocks
#LUA=lua

# Match sources via globbing, sort for determinism
CATS=$(sort $(wildcard ./CATS/*.lua))
DATS=$(sort $(wildcard ./DATS/*.dats))
DATSLUA = $(patsubst %.dats,./BUILD/%_dats.lua,$(DATS))

# Main target
all: libatscc2lua.lua

# Compile all dats files:
# ATS --(patsopt)--> C --(atscc2lua)--> Lua
./BUILD/%_dats.lua: %.dats
	$(PATSOPT) -d $< | $(ATSCC2LUA) -o $@ -i

# Concatenated build
libatscc2lua.lua: $(CATS) $(DATSLUA)
	echo "-- Auto generated - Do not edit\n" > $@
	$(CAT) $^ >> $@

clean:
	$(RMF) libatscc2lua.lua
	$(RMF) $(DATSLUA)

.PHONY: clean all 
