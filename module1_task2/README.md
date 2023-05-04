# Introduction to DevOps

Automating tedious tasks and shell-like tasks with Makefiles.
Building static HTML websites from Markdown code using Go-Hugo.

## Prerequisites

To get started with DevOps and building a website with Hugo using the Makefile provided, you will need the following:

- An HTML5-compliant web browser (Firefox, Chrome, Opera, Safari, Edge, etc.)
- A GitHub account
- A shell terminal with bash, zsh or ksh, including the standard Unix
- GNU Make version 3.81 or higher
- Git (command line) version 2 or higher
- Hugo version v0.84.0 or higher
- A text editor or IDE (Emacs, Visual Studio Code)

## Lifecycle

**Build**: Use the `make build` command in the terminal to build the static HTML pages from the Markdown files.
**Create a new post**: Use the `make post POST_NAME=<name> POST_TITLE=<title>` command in the terminal to create a new post in the `content/posts` directory with the given name and title.
**Clean**: Use the `make clean` command in the terminal to remove the `dist` directory and its contents.
**Help**: Use help to show Makefile usage