HUGO=hugo
RM=rm -rf

build: ## Using Hugo, generates a website in the directory dist/
		$(HUGO)

clean: ## Cleans up the content of the directory dist/
		$(RM) dist/*

post: ## Creates a new blog post using the environment variables
		$(HUGO) new posts/$(POST_NAME).md
		sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Shows help usage
		@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep                              -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
