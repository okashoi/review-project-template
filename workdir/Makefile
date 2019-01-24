SRCS := $(shell find . -type f -name '*.re')
.PHONY: lint clean

# for Re:VIEW
book.pdf: config.yml catalog.yml $(SRCS)
	review-pdfmaker config.yml

# for textlint
node_modules/.bin/textlint:
	npm install

lint: node_modules/.bin/textlint
	npx textlint $(SRCS)

# common
clean:
	rm book.pdf
	rm -r node_modules
