# This section is for clangd only.
# Keep it around if you are using clangd on multiple platforms.
ifeq ($(OS), Windows_NT)
	gyp_cache := $(subst \,/,${HOME})/AppData/Local/node-gyp/Cache
else
	gyp_cache := ${HOME}/.cache/node-gyp
endif

node_include := $(word 1,$(wildcard $(gyp_cache)/*/))include/node

compile_flags.txt:
	$(file >$@)
	$(file >>$@,-Wall)
	$(file >>$@,-Wextra)
	$(file >>$@,-I$(node_include))
	@echo made $@

# Here is where the actual building happens.
src := mod.c
bin := $(shell node -e "console.log(require('./package.json').main)")

$(bin): $(src)
	npx node-gyp rebuild

build: $(bin)
	-

print: $(bin)
	node example.js

clean:
	npx node-gyp clean

.PHONY: compile_flags.txt print clean
