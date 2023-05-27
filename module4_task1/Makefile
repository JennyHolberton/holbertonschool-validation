GO=go
TARGET=awesome-api
RM=rm -rf
MAKE=make
COVERAGE=coverage
HUGO=hugo

build: ## Generate the source code of the application to a binary and generate a static Hugo site inside a Docker container
	$(MAKE) build-docker
	$(MAKE) golang-build
	$(MAKE) hugo-build
 
build-docker: ## Generate a Docker container
	docker build -t awesome:build -f .build/Dockerfile .

golang-build: ## Generate the source code of the application to a binary.
	docker run --rm -v $(PWD):/app -w /app awesome:build go build

hugo-build: ## Generate static Hugo site
	docker run --rm -v $(PWD):/app -w /app awesome:build hugo

run:	## Run the application in background by executing the binary.
	./$(TARGET) >./$(TARGET).log 2>&1 &

post:	## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	$(HUGO) new posts/$(POST_NAME).md
	sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

stop:	## Stop the application.
	@pkill $(TARGET)

clean:	## Stop the application. Delete the binary and the log file.
	@if pgrep -x $(TARGET) > /dev/null; then \
		pkill $(TARGET); \
	fi
	@$(RM) $(TARGET) $(TARGET).log $(COVERAGE)-units.out $(COVERAGE)-integrations.out dist/ *~ awesome-website.zip

test:	## Test the application.
	$(MAKE) unit-tests
	$(MAKE) integration-tests
	$(MAKE) validate

unit-tests: ## Run unit tests
	docker run --rm --tty --volume=$$(pwd):/app --workdir=/app golang:1.15.8-buster go test -v -short -coverprofile=$(COVERAGE)-units.out

integration-tests: ## Run integration tests
	docker run --rm --tty --volume=$$(pwd):/app --workdir=/app golang:1.15.8-buster go test -v -coverprofile=$(COVERAGE)-integrations.out

validate:	## Validate the file dist/index.html using the command line Holberton’s W3C Validator.
	python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html || true

lint:	## Lint markdown files
	markdownlint DEPLOY.md

package: ## Creates a zip file containing awesome-api binary file and dist/ directory
	zip -R awesome-website.zip dist/
	zip -u awesome-website.zip awesome-api

help:	## Show this help usage.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)
