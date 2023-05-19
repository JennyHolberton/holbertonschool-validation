# Introduction to DevOps

Automating tedious tasks and shell-like tasks with Makefiles.
Building static HTML websites from Markdown code using Go-Hugo.

## Prerequisites

To build a Hugo website, you'll need:

- An HTML5-compliant web browser (Firefox, Chrome, Opera, Safari, Edge, etc.)
- A GitHub account
- A shell terminal with bash, zsh or ksh, including the standard Unix
- GNU Make version 3.81 or higher
- Git (command line) version 2 or higher
- Hugo version v0.84.0 or higher
- A text editor or IDE (Emacs, Visual Studio Code)

## Lifecycle

`build`:
`make build` to build static HTML pages from Markdown files.
`post`:
`make post POST_NAME=<name> POST_TITLE=<title>`
command in the terminalto create a new post in the `content/posts` directory
with the given name and title.
`clean`:
`make clean` Removes the `dist` directory and its contents.
`help`: Show Makefile usage.

## Workflow

To ensure the code is always ready to be deployed and that the build
process is up to date, automated workflow using GitHub Actions has been set up.
This workflow performs various validations,
including linting, building, and running tests.

### Workflow Steps

1. **Clone Repository:** Clones the repository into the GitHub Actions environment.
2. **Set Up Environment:** Workflow uses the `ubuntu-22.04` virtual machine.
3. **Validate Makefile:** Workflow positions itself in the correct directory
and executes the command `make help` to validate the presence of the Makefile
and ensure it implements the help target.

### Workflow Trigger

The workflow is triggered in two scenarios:

1. **New Code Push:** Whenever there is new code pushed to the repository
2. **Daily Schedule:** The workflow is also scheduled to run once per day
at a specified time. This ensures that our code is regularly validated
and ready for deployment.
