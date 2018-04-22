#!/bin/bash

docker rm -f rundeck
docker run -d \
	-p 4440:4440 \
	-v $PWD/projects:/var/rundeck/projects \
	-v $PWD/plugins:/opt/rundeck-plugins \
	-e EXTERNAL_SERVER_URL=http://localhost:4440 \
	--name rundeck \
	-t jordan/rundeck:latest
