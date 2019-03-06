test:
	busted spec

local: build
	luarocks make --force --local sncl-dev-1.rockspec

global: build
	sudo luarocks make sncl-dev-1.rockspec

build:
	moonc ./

watch: build
	moonc -w sncl

clean:
	rm $$(find sncl/ | grep \.lua$$)
