# Deployment documentation

## What is an archive?

The application archive contains the necessary files and \
configurations to deploy and run the application.

## How to unarchive?

1. Download the application archive to \
the desired deployment location.
2. Open a terminal or command prompt and navigate to \
the directory where the archive is located.
3. Run `unzip awesome-website.zip`

## Commands to start and stop the application

### Start

1. Open a terminal or command prompt.
2. Navigate to the application directory where \
the files were unarchived.
3. Run `./awesome-api >./awesome-api.log 2>&1 &`

### Stop

1. Open a terminal or command prompt.
2. Locate the running process ID (PID) of the application.
3. Run `kill <PID>`

## How to customise where applications logs are written

1. Open the application's configuration file, named `config.yaml`.
2. Look for the log configuration section or properties.
3. Modify the log file path or directory as desired.
4. Save the changes.

## How to quickly verify the application is running

1. [Visit](http://localhost:9999)
