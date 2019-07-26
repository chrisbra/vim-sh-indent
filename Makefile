PLUGIN=$(shell basename "$$PWD")
.PHONY: test

test:
	cd test && ./test.sh -v && cd .. && echo "cleaning output" && $(MAKE) clean > /dev/null

zip:
	@rm -f $(PLUGIN).zip; find . -type f -name "*.vim" | zip -@ $(PLUGIN).zip

clean:
	find . -type f -name "output.sh" -delete -o -name "*.swp" -delete

submit:
	@echo "Set environment variable '\$$MSG' to the tag message, like this:"
	@echo "MSG='My tag message'"
	@echo "git tag -f -s \`date +'%Y%m%d'\` -m \"\$$MSG\""
