# Introduction to DevOps
Automating tedious tasks and shell-like tasks with Makefiles.
Building static HTML websites from Markdown code using Go-Hugo.

## Prerequisites
To get started with starting up an HTTP web server in Golang, you will need the following:

- An HTML5-compliant web browser (Firefox, Chrome, Opera, Safari, Edge, etc.)
- A GitHub account
- A shell terminal with bash, zsh or ksh, including the standard Unix
- GNU Make version 3.81 or higher
- Git (command line) version 2 or higher
- Hugo version v0.84.0 or higher
- Golang in v1.15.*
- NPM v7+ with NodeJS v14.* (stable)
- Python 3 with pip module
- Go linter runner: golangci-lint
- A text editor or IDE (Emacs, Visual Studio Code)

## Lifecycle
**build**: To compile the source code of the application and create a binary file named "awesome-api" \
**run**: To start the application and write logs into awesome-api.log \
**stop**: To stop the running application by killing the process ID (PID) \
**clean**: To stop the application, delete the awesome-api binary file, and remove the awesome-api.log file \
**test**: To check if the server is running by making HTTP requests \
**lint**: To check for semantic errors \
**unit-test**: To run unit-tests \
**integration-tests**: To run integration tests \
**help**: To display the available make commands and their descriptions


