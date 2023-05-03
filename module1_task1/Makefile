HUGO=hugo
RM=rm -rf

build: 
	$(HUGO)

clean:
	$(RM) dist/*

post:
	$(HUGO) new posts/$(POST_NAME).md
	sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
