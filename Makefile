.PHONY: doc release

PROG    := bin/pmver
VERSION := $(shell $(PROG) -v)

doc: README.md
	pod2markdown $(PROG) > README.md

release:
	git commit -m $(VERSION)
	git tag -a v$(VERSION) -m $(VERSION)
	git push origin v$(VERSION)
	git push origin master
