.DEFAULT_GOAL := usage

.PHONY: brew
brew:
	brew bundle --file .bin/Brewfile

.PHONY: usage
usage:
	@echo "make brew"
