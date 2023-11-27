#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
chmod +x build.sh
./build.sh
docker login -u dhividhivya -p dckr_pat_m7npjA2QFNahOVm4hgPGgj9vTw0 
docker tag myreactimg dhividhivya/dev
docker push dhividhivya/dev
elif [[ $GIT_BRANCH == "origin/master" ]]; then
chmod +x build.sh
./build.sh
docker login -u dhividhivya -p dckr_pat_m7npjA2QFNahOVm4hgPGgj9vTw0
docker tag myreactimg dhividhivya/prod
docker push dhividhivya/prod
else	
   echo "deployment error"
fi

