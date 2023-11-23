#!/bin/bash
if[[$GIT-BRANCH==origin/dev]]
	build.sh
        docker login
        docker credentials
        docker tag image
        docker push dev/docker repo
elif[[$GIT-BRANCH==origin/prod]]
	build.sh
        docker login
        docker credentials
        docker tag image
        docker push prod/dockerhub
else
	echo "deployment error"
fi

