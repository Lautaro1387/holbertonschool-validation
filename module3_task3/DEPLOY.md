# DEPLOY.MD
## What is in the archive and how to unarchive it?
The archive "awesome-website.zip that is produced by the make target,
contains the binary file "awesome-api" in the "./dist/" directory.
Unarchive the file, you can see the "unzip" command on the command line.
## What are the commands to start and stop the application?
The commands to start and stop the application will depend
on how the application was built and how it runs.
In this case the application is a binary
For example:
```./awesome-api```
## How to customize where the application logs are written?
The location where the application logs are written can be costomized
by specifying a different location when starting the application or
by modifying the configuration of the application.
For example (specifying a different location):
```./awesome-api >> /path/to/logs/awesome-api.log```
## How to “quickly” verify that the application is running (healthcheck)?
curl http://localhost:8000/health
