#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
./build.sh
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD 
docker tag myreactimg dhividhivya/dev
docker push dhividhivya/dev
elif [[ $GIT_BRANCH == "origin/master" ]]; then
./build.sh
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker tag myreactimg dhividhivya/prod
docker push dhividhivya/prod
else	
   echo "deployment error"
fi

