build:  ## Compiles source code of application to a binary file named awesome-api
	go build -o awesome-api


run:	## Runs the application. Writes logs into awesome-api.log
	./awesome-api >./awesome-api.log 2>&1 &


stop:	## Stops the application. Kills PID of application
	kill "$$(pgrep awesome-api)"


clean:	## Stops the application. Deletes awesome-api and awesome-api.log
	rm -rf awesome-api awesome-api.log


test:	## Curls HTTP to check if server is running
	curl http://localhost:9999
	curl http://localhost:9999/health


help:	## Shows help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep
