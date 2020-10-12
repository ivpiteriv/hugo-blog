HUGO_BIN=hugo

.PHONY: prepare build

build:
	$(HUGO_BIN)

prepare: build
	cd public/ & git branch & git checkout gh-pages & git add . & git commit -m "new changes on source folder and build automatically by makefile" & git push
