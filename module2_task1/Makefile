build:  ## Compiles source code of application to a binary file named awesome-api
	$(MAKE) lint
	go build -o awesome-api


run:	## Runs the application. Writes logs into awesome-api.log
	./awesome-api >./awesome-api.log 2>&1 &


stop:	## Stops the application. Kills PID of application
	-kill "$$(pgrep awesome-api)"


clean:	## Stops the application. Deletes awesome-api, awesome-api.log and go.sum
	-kill "$$(pgrep awesome-api)"
	rm -rf awesome-api awesome-api.log go.sum


test:	## Curls HTTP to check if server is running
	curl http://localhost:9999
	curl http://localhost:9999/health


lint: ## Checks for semantic errors
	golangci-lint run


help:	## Shows help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
