RM=rm -rf

build:
	hugo

clean:
	$(RM) dist/*
post:
	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
