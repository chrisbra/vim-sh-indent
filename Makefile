PLUGIN=$(shell basename "$$PWD")
.PHONY: test

zip:
	@rm -f $(PLUGIN).zip; find . -type f -name "*.vim" | zip -@ $(PLUGIN).zip

test:
	cd test && ./test.sh

clean:
	find . -type f -name "output.sh" -delete -o -name "*.swp" -delete
